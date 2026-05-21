---
name: ezoic-collateral
description: This skill should be used to produce Ezoic sales and marketing collateral — when the user asks for a "one-pager", "product sheet", "sell sheet", "case study", or "battlecard". Produces a structured editorial document with section-by-section copy and visual direction, grounded in the shared references and proof points. Enforces case-study integrity (no invented customer, quote, screenshot, or metric). Not for free-form channel copy (use ezoic-draft-content), decks (ezoic-pitch-deck), or landing pages (ezoic-landing-page).
---

# Ezoic — Collateral

Produce a structured editorial document (one-pager, product sheet, case study, battlecard) with copy and visual direction.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 12 + 6 contract is binding.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `channel-playbook.md`, `product-catalog.md`, `proof-points.md`, `ezoic-context.md`, `positioning-pillars.md`, `ezoic-style-design-bible.md`.
3. For any asset placement, query the live catalog (`list_brand_assets` / `/api/ezoic-brand/assets`). Never infer an asset from its filename.

## Step 1 — Confirm the brief

Use the orchestrator's brief block, or build the 10-field brief. Name one primary product (per `product-catalog.md` decision matrix) and one audience segment. If a field can't be filled from canonical sources, stop and ask.

## Step 2 — Produce the document

Build on the design bible's case-study/collateral structure: **situation → operating change → source-ready proof slot → quote slot → next action.** One dominant idea per section. Prefer editorial rows, sparse proof, and photo-led atmosphere only when an approved photo exists.

- **One-pager / product sheet:** hero claim → what it is (one sentence) → 2–3 capability sections (one claim per section, supported) → a single Mint-led proof slot → CTA. Lead with the outcome, not the feature.
- **Case study:** at-a-glance box (name, vertical, scale, headline result) → the situation → the implementation (JS snippet, timeline) → results with segment context → publisher quote in their voice → next step. "After integrating Ezoic, [Publisher] saw X% lift in EPMV within Y months" — never "With Ezoic, they were able to…".
- **Battlecard:** refocus, never attack; lead with Ezoic-specific differentiators and "afters."

## Step 3 — Visual direction

Apply visual rules 13–18 from `_resolver.md`: near-black + off-white carry it, Mint is the single accent, editorial rhythm, no SaaS card grids / fake dashboards. Leave metric, quote, and customer-detail slots open until a cited value exists.

## Step 4 — Self-check

Run the 10-point smell test verbatim. Then the case-study/collateral integrity guardrails:
- **No invented customer, quote, screenshot, metric, or logo.** Leave the slot open and labeled if the value isn't sourced.
- One dominant idea per section; sparse proof (don't stack stats).
- Every number traces to `proof-points.md` with its segment context.

Fix anything that fails, then deliver.
