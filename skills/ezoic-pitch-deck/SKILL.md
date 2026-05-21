---
name: ezoic-pitch-deck
description: This skill should be used to build an Ezoic sales or pitch deck — when the user asks for a "deck", "slides", "presentation", "sales deck", or "pitch deck". Produces a slide-by-slide outline with copy, speaker notes, and visual direction. When the anthropic-skills:pptx skill is available, also renders the outline to a real .pptx file; otherwise delivers the outline plus a one-line note on how to install pptx for rendering. Grounded in the shared references and proof points.
---

# Ezoic — Pitch Deck

Produce a slide-by-slide deck outline in Ezoic's voice, then optionally render it to `.pptx`.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 12 + 6 contract is binding.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `positioning-pillars.md`, `audience-segments.md`, `proof-points.md`, `ezoic-style-design-bible.md`.

## Step 1 — Confirm the brief

Use the orchestrator's brief block or build the 10-field brief. Name the audience segment and the value-prop rung (decks usually run Rung 4 + 3 + 2 per `positioning-pillars.md`). If a field can't be filled from canonical sources, stop and ask.

## Step 2 — Produce the outline

For each slide, produce: **slide title** (concrete, 5–7 words) · **body copy** (1–2 lines or sparse phrases) · **supporting proof** (numbers from `proof-points.md` with segment context) · **speaker notes** · **visual direction tokens**. Treat a proof-point number as hero typography. Never a small-to-big funnel. If a number isn't verified, label the slide as a placeholder — do not invent.

## Step 3 — Visual direction

Apply visual rules 13–18 from `_resolver.md`: near-black field, **Mint as the single accent**, hierarchy via scale / spacing / surface (not all-caps or heavy bold), Inter for type, Red Hat Mono only for code/values. Logo lockup only from the live asset catalog.

## Step 4 — Render to .pptx (conditional)

If rendering is requested:
- **If `anthropic-skills:pptx` is available**, hand it the structured outline (slide title, body, speaker notes, visual direction tokens) and render to the user-specified path. The render step is a **translation, not a draft** — do not fabricate or add slide content during render.
- **If `anthropic-skills:pptx` is not available**, deliver the outline only and add one line: *"Install the `anthropic-skills:pptx` skill to render this as a real .pptx deck."* Never silently fail; never fabricate a binary.

## Step 5 — Self-check

Run the 10-point smell test verbatim. Then: every number is verified and carries segment context; placeholders are labeled; Mint is the only accent; no all-caps/heavy-bold hierarchy; one narrative frame across the deck. Fix anything that fails, then deliver.
