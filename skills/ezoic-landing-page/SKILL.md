---
name: ezoic-landing-page
description: This skill should be used to produce Ezoic landing-page or microsite copy — when the user asks for a "landing page", "LP", "microsite", or "product page" for Ezoic or an Ezoic product (ezID, SaaS Monetization, Rewarded Ads, Open.Video, etc.). Produces section-by-section copy with structural notes and visual direction in Ezoic's editorial, dark-first system. Grounded in the shared references and proof points. Not for free-form blog/social copy (use ezoic-draft-content) or slide decks (use ezoic-pitch-deck).
---

# Ezoic — Landing Page

Produce section-by-section landing-page copy with structure and visual direction.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 12 + 6 contract is binding.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `channel-playbook.md` (Website Product Page / Blog–Website Copy sections), `positioning-pillars.md`, `proof-points.md`, `product-catalog.md`, `ezoic-style-design-bible.md`.
3. For any imagery, query the live asset catalog (`list_brand_assets` / `/api/ezoic-brand/assets?root=photo-backs`). Never infer an asset from its filename.

## Step 1 — Confirm the brief

Use the orchestrator's brief block or build the 10-field brief. Name one primary product and one audience segment. Landing pages usually pitch Rung 3 + 2 (business outcome + product capability) per `positioning-pillars.md`. If a field can't be filled from canonical sources, stop and ask.

## Step 2 — Produce the page

Follow the product-page rhythm from `channel-playbook.md`: **hero headline (5–8 words) → one-sentence subhead → primary CTA → 2–3 capability sections (one claim per section, supported) → proof (stats / quotes from `proof-points.md`) → final CTA.** Lead the hero with the business outcome. Match copy to the audience's technical depth. One narrative frame for the whole page.

## Step 3 — Visual direction & structure

Apply visual rules 13–18 from `_resolver.md`:
- **Editorial rhythm:** max content width `1400px`, dark-first (near-black field, off-white interrupts).
- **Mint is the single accent;** primary CTA = rounded Mint pill with near-black text.
- **No** grid-card filler, gradient blur blobs, fake dashboards, or generic SaaS card grids.
- **Photo backdrop only when a real approved asset exists** in the live catalog; otherwise a quiet editorial surface with an open media slot.
- Hierarchy via scale / spacing / surface — not all-caps or heavy bold.

## Step 4 — Self-check

Run the 10-point smell test verbatim. Then: dark-first editorial system (no SaaS-template look); every claim numbered from `proof-points.md` with segment context; audience noun correct (not "publishers" alone when broader); customer is the subject; one narrative frame. Fix anything that fails, then deliver.
