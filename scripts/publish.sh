#!/usr/bin/env bash
#
# publish.sh — gate, version, and package the ezoic-marketing skill.
#
# The rule this script enforces: references/ + SKILL.md are the single source
# of truth; every other artifact (the plugin payload at skills/ezoic-marketing/,
# the Cursor marketplace entry, any paste-bundle) is build output.
#
# Usage:
#   scripts/publish.sh check            # run the gates only (no writes)
#   scripts/publish.sh <version>        # gates -> bump version -> package
#                                       # e.g. scripts/publish.sh 2.0.1
#
# Gates:
#   1. Deprecated-name grep gate — the retired names (Humix, Flickify) may
#      appear ONLY inside deny-list / deprecated-name warning text.
#   2. SKILL.md YAML frontmatter parses; name present; description <= 1024 chars.
#   3. .claude-plugin/*.json are valid JSON.
#
# Package step builds skills/ezoic-marketing/ (SKILL.md + references/) so the
# Claude Code plugin loader auto-discovers the consolidated skill. Commit the
# result; Cursor caches by commit hash, so propagation requires pushing the
# new commit that the marketplace pointer serves — a version bump alone does
# not update installed Cursor copies.
#
# NOTE: this script never runs git commit/push. Review and commit manually.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

MODE="${1:-}"
if [[ -z "$MODE" ]]; then
  echo "usage: scripts/publish.sh check | scripts/publish.sh <version>" >&2
  exit 2
fi

fail() { echo "FAIL: $*" >&2; exit 1; }
ok()   { echo "  ok: $*"; }

# Skill payload surfaces (never scan scripts/ — this file names the banned words).
PAYLOAD=(SKILL.md references .claude-plugin README.md)
[[ -f CHANGELOG.md ]] && PAYLOAD+=(CHANGELOG.md)
[[ -d skills ]] && PAYLOAD+=(skills)

echo "== Gate 1: deprecated-name grep =="
# Lines carrying the retired names are allowed only when they are themselves
# deny-list / deprecation warnings.
VIOLATIONS="$(grep -rniE 'humix|flickify' "${PAYLOAD[@]}" 2>/dev/null \
  | grep -viE 'deny.?list|deprecat|never appear|retired|legacy' || true)"
if [[ -n "$VIOLATIONS" ]]; then
  echo "$VIOLATIONS" >&2
  fail "retired product names found outside deny-list/warning context"
fi
ok "no retired product names outside deny-list context"

echo "== Gate 2: SKILL.md frontmatter =="
python3 - <<'PY'
import sys, yaml
text = open('SKILL.md', encoding='utf-8').read()
if not text.startswith('---'):
    sys.exit('FAIL: SKILL.md has no YAML frontmatter')
fm = text.split('---')[1]
data = yaml.safe_load(fm)
assert data.get('name'), 'frontmatter missing name'
desc = data.get('description') or ''
assert desc, 'frontmatter missing description'
assert len(desc) <= 1024, f'description is {len(desc)} chars (max 1024)'
print(f"  ok: frontmatter parses — name={data['name']}, description={len(desc)} chars")
PY

echo "== Gate 3: plugin JSON =="
python3 - <<'PY'
import json
for p in ('.claude-plugin/plugin.json', '.claude-plugin/marketplace.json'):
    with open(p, encoding='utf-8') as f:
        json.load(f)
    print(f'  ok: {p} is valid JSON')
PY

if [[ "$MODE" == "check" ]]; then
  echo "All gates passed (check mode — nothing written)."
  exit 0
fi

VERSION="$MODE"

echo "== Version bump -> $VERSION =="
python3 - "$VERSION" <<'PY'
import json, re, sys
version = sys.argv[1]

# SKILL.md metadata.version
text = open('SKILL.md', encoding='utf-8').read()
new, n = re.subn(r"(\n\s*version:\s*)\S[^\n]*", rf"\g<1>'{version}'", text, count=1)
if n != 1:
    sys.exit('FAIL: could not find metadata.version in SKILL.md frontmatter')
open('SKILL.md', 'w', encoding='utf-8').write(new)
print(f"  ok: SKILL.md metadata.version -> '{version}'")

# .claude-plugin/plugin.json version
with open('.claude-plugin/plugin.json', encoding='utf-8') as f:
    plugin = json.load(f)
plugin['version'] = version
with open('.claude-plugin/plugin.json', 'w', encoding='utf-8') as f:
    json.dump(plugin, f, indent=2, ensure_ascii=False)
    f.write('\n')
print(f'  ok: .claude-plugin/plugin.json version -> {version}')
PY

echo "== Package: skills/ezoic-marketing/ =="
rm -rf skills/ezoic-marketing
mkdir -p skills/ezoic-marketing
cp SKILL.md skills/ezoic-marketing/SKILL.md
cp -R references skills/ezoic-marketing/references
ok "built skills/ezoic-marketing/ (SKILL.md + references/) from the root source"

echo "== CHANGELOG check =="
if ! grep -q "## \[$VERSION\]" CHANGELOG.md 2>/dev/null; then
  fail "CHANGELOG.md has no '## [$VERSION]' entry — add one before publishing"
fi
ok "CHANGELOG.md has an entry for $VERSION"

echo
echo "Done. Next steps (manual):"
echo "  1. git diff — review the bump + packaged payload"
echo "  2. Commit and push (Cursor picks up the new commit via the marketplace pointer)"
echo "  3. Claude Code: /plugin install ezoic-marketing@ezoic-internal-marketing (or update)"
