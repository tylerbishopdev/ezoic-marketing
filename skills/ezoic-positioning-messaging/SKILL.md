---
name: ezoic-positioning-messaging
description: This skill should be used to shape Ezoic positioning and messaging — when the user asks to "position this", "write messaging for", "build the narrative for", "what's the value prop for", or needs a category claim, three-pillar narrative, value-prop ladder, or a per-audience messaging matrix for Ezoic or an Ezoic product. Produces strategic messaging artifacts grounded in the shared references. Not the final channel copy (use ezoic-draft-content) or a campaign rollout (use ezoic-campaign-strategy).
---

# Ezoic — Positioning & Messaging

Produce the strategic messaging layer: category claim, three-pillar narrative, value-prop ladder, and per-audience matrix.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 12 + 6 contract is binding.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `positioning-pillars.md`, `audience-segments.md`, `product-catalog.md`, `ezoic-context.md`.

## Step 1 — Confirm the brief

Name what's being positioned (Ezoic overall, or a specific product) and the audiences in scope. If a fact about the product can't be resolved from `product-catalog.md` / `ezoic-context.md` or the live API, stop and ask.

## Step 2 — Produce the messaging

Output four parts:
1. **Category claim** — anchor on the canonical framing from `positioning-pillars.md`: *revenue infrastructure for the modern web* / *the operating layer for independent web businesses*. Never "ad network," "plugin," or "tool."
2. **Three-pillar narrative** — draw credibility from the authority pillars: Expertise · Technical Chops · Outcomes. Each claim cites its proof.
3. **Value-prop ladder** — place the message on Rungs 1–5 and state which rung suits which channel/audience.
4. **Per-audience messaging matrix** — for each segment in scope, the primary message, the proof with segment context, and the right audience noun.

## Step 3 — Self-check

Run the 10-point smell test verbatim. Then the positioning guardrails:
- **The "replace Ezoic with CompetitorX" test must fail** — if the statement still works with another company's name and different numbers, it's generic; rewrite until it channels at least **two** Ezoic-specific differentiators (per `positioning-pillars.md → What makes a positioning statement Ezoic-flavored`).
- Infrastructure framing only.
- Audience noun correct per segment; customer is the subject.
- Every proof point carries segment context.

Fix anything that fails, then deliver.
