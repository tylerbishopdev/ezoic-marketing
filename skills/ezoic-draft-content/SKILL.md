---
name: ezoic-draft-content
description: This skill should be used to write final, channel-formatted Ezoic marketing copy — when the user asks to "write", "draft", or "produce" a press release, LinkedIn post, X thread, blog post, social post, ad copy, or help-center FAQ for Ezoic. Produces the actual deliverable in Ezoic's voice (direct, confident, technical), grounded in the shared references and proof points, with visual direction when the asset will be seen. Not for one-pagers/case studies (use ezoic-collateral), decks (ezoic-pitch-deck), landing pages (ezoic-landing-page), or emails (ezoic-email-compose).
---

# Ezoic — Draft Content

Write the final copy for a single channel asset, in Ezoic's voice, grounded in canonical sources.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 3-tier resolver and the 12 + 6 brand-enforcement contract are binding as written there.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `channel-playbook.md`, `product-catalog.md`, `proof-points.md`, `ezoic-context.md`. If the asset will be seen (social image, ad), also load `ezoic-style-design-bible.md` and check the live asset catalog.

## Step 1 — Confirm the brief

Use the brief block from the orchestrator. If invoked directly, build the 10-field brief (Deliverable, Channel, Audience/ICP, Author, Pillar, Narrative frame, Primary proof, Value-prop rung, Voice calibration, Length target). If a field can't be filled from canonical sources, stop and ask. Never guess ICP, pillar, or proof point.

## Step 2 — Produce the copy

Pull the channel's structure, length target, and voice calibration from `channel-playbook.md` (Press Release, LinkedIn Post, Blog/Website Copy, Help Center FAQ, etc.). Match the output to exactly what was asked — copy only unless an image or extra format was requested. Don't format-vomit.

Per-channel anchors:
- **Press release:** headline = news + directional signal; dateline; lead ¶ then "why" ¶; one attributed exec quote that carries the narrative (not the headline); proof paragraphs; boilerplate. 400–600 words.
- **LinkedIn (exec):** first line stands alone; short paragraphs, one idea each; pivot to Ezoic's focus; one or two specifics; no "Sign up today" CTA. 150–300 words.
- **Blog / product page:** lead with the tension or the value prop; one claim per section; proof from `proof-points.md`.
- **FAQ:** lead with the answer, then minimal rationale; no marketing language.

## Step 3 — Visual direction (only if the asset will be seen)

Apply visual rules 13–18 from `_resolver.md`. Place real assets only from the live catalog; never infer an asset from its filename.

## Step 4 — Self-check

Run the 10-point smell test from `_resolver.md` verbatim. Then enforce the skill-specific guardrails:
- **One narrative frame per asset** — don't stack the five strategic narratives.
- **Banned words auto-rewrite** — strip and replace per `brand-voice.md → Anti-patterns`.
- **No CPM dollar claims** without a cited source.
- At least one proof point with its required segment context appears in the first third.

Fix anything that fails, then deliver.
