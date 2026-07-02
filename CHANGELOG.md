# Changelog

All notable changes to the `ezoic-marketing` skill and its plugin packaging.

## [2.0.0] — 2026-07-01

Full overhaul: re-converted to a native Claude Code skill and re-verified against live sources.

### Changed
- **Consolidated skill rewritten Claude-native (v2.0)** from the interim external-runtime port (`1.1-pplx`): 13 task playbooks (including advertiser marketing / bidsystem.ai), a 3-tier source resolver with the `ezoic-brand` MCP server as Tier 1, and the binding brand-enforcement contract (rules 1–20, including the deprecated-name deny list).
- **Frontmatter description rewritten trigger-first** — task and product-name triggers up front, mechanism out; ends with the cross-skill boundary: Open.Video-only work where Ezoic is not the frame routes to `openvideo-marketing`.
- **Consultative/expertise register extended to all primary 250K+ segments** (web apps, games, SaaS, newsletters, content publishers) in `audience-segments.md`, `positioning-pillars.md`, and `product-catalog.md`: dedicated account specialist, personalized revenue strategy sessions, and custom first-party data / ad ops planning (Business tier) are now part of the default pitch. "JS snippet. Live in minutes." remains a supporting friction-killer, never the lead of strategic copy.
- **References re-verified against live primary sources** with as-of dates (2026-07-01): payment terms sourced to the ToS, the free-core commitment to the live FAQ's full wording, scale claims to the live ezoic.com homepage; unverifiable figures removed rather than kept.

### Added
- Restored plugin packaging (`.claude-plugin/plugin.json` + `marketplace.json`) that the 2026-06-18 consolidation (`fc996bc`) removed — updated for the single consolidated skill (no return to the old 10-skill split).
- `scripts/publish.sh` — deprecated-name grep gate, YAML/JSON verification, version bump, and packaging of `skills/ezoic-marketing/` from the root source. References are the single source of truth; everything else is build output.
- This changelog.

## [1.1-pplx] — 2026-06

Interim conversion of the consolidated skill for an external runtime (Perplexity). Superseded by 2.0.0.

## [1.0.0] — 2026-05-21

Initial release as a Claude Code plugin (`1980c52`): 10 skills, `.claude-plugin/` scaffolding, brand MCP integration. Consolidated into a single root skill on 2026-06-18 (`fc996bc`).
