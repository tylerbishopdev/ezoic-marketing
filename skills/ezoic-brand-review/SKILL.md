---
name: ezoic-brand-review
description: This skill should be used to audit existing Ezoic copy against the brand — when the user asks "is this on-brand", "review this", "audit this draft", "run the smell test", "does this sound like us", or pastes copy for a brand check. Produces a section-by-section flagged audit with severity-tagged before/after rewrites, grounded in the shared references. Flags every unverified number and any asset claimed by filename. Reviews existing content; does not draft new assets (route those to the producing specialist).
---

# Ezoic — Brand Review

Audit supplied copy against the brand contract and return severity-tagged, fixable findings.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 12 + 6 contract and the 10-point smell test are the audit rubric.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md` (full), `positioning-pillars.md`, `proof-points.md`, `channel-playbook.md`, `ezoic-context.md`. If the content has visual direction, also load `ezoic-style-design-bible.md` and check the live asset catalog.

## Step 1 — Frame the audit

Note the asset type, channel, and intended audience segment. Pull the relevant channel calibration and length target from `channel-playbook.md` so the review judges against the right standard.

## Step 2 — Produce the audit

Go section by section. For each finding, output: **the flagged text · the rule it breaks (cite the contract rule # or smell-test point) · severity · a concrete before/after rewrite.**

Severity scale:
- **Critical** — fabricated/unsourced number, CPM dollar claim without a source, "ad network/plugin/tool" framing, competitor attack, a product or partner not in the references or live API, an asset claimed by filename inference.
- **Major** — "publishers" used alone when the audience is broader; no proof point in the first third; customer not the subject; stacked tropes / stacked stats.
- **Minor** — banned word; hedging; capitalization/terminology slips; tonal drift from channel calibration.

## Step 3 — Verification passes

- **Number check:** flag every statistic that doesn't trace to `proof-points.md` (or the live API) with its required segment context.
- **Visual check:** flag any asset, logo, or photo claimed by filename rather than the live catalog (`list_brand_assets` / `/api/ezoic-brand/assets`).
- **Terminology check:** verify capitalization against `brand-voice.md → Capitalization & terminology`.

## Step 4 — Deliver

Run the 10-point smell test verbatim against the whole piece and report each point's pass/fail. Summarize findings by severity (Critical → Major → Minor) with the rewrites. Report drift; never silently rewrite the user's asset without showing the change.
