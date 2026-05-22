---
name: ezoic-objection-response
description: This skill should be used to handle a sales or marketing objection about Ezoic — when the user says "how do we respond to", "what's our rebuttal to", "they said X", "a prospect thinks Y", or names a competitor comparison or a concern (e.g. "AdSense is fine", "Ezoic needs DNS changes", "we don't have an ad ops team", "what if it doesn't work"). Produces a direct reframe + supporting proof + ready-to-use handoff lines, grounded in the shared references. Refocuses on Ezoic's strengths; never attacks competitors.
---

# Ezoic — Objection Response

Turn an objection into a calm, confident reframe backed by proof. Refocus, never attack.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 12 + 6 contract is binding — rule 12 (refocus, never attack) governs this skill.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `positioning-pillars.md` (Competitive positioning section), `proof-points.md`, `product-catalog.md`. Check `audience-segments.md → Objection handling quick reference` for the canonical response pattern when one exists.

## Step 1 — Confirm the objection

State the objection in one sentence and name the audience segment raising it. Map it to the canonical pattern in `audience-segments.md` if present (e.g. the DNS myth → "JS snippet. Live in minutes."; "no ad ops team" → "Ezoic *is* the ad ops team").

## Step 2 — Produce the response

Output three parts:
1. **The reframe** — a direct restatement that moves from the objection to Ezoic's actual position. Lead with what's true about Ezoic today, not what they remember.
2. **Supporting proof** — one or two "afters" from `proof-points.md` with segment context (e.g. 15%+ EPMV lift on identified traffic; 110%+ U.S. identified; 6x identified-revenue growth).
3. **Handoff lines** — one or two rehearsable, memorizable sentences a rep can say verbatim (talk-track register from `channel-playbook.md → Internal Talk Track`).

Keep it short and confident. Never disparage the competitor — if one is named, acknowledge it neutrally and refocus ("No pressure. If you're seeing results there, great. Just know what's here if it's ever worth comparing notes.").

## Step 3 — Self-check

Run the 10-point smell test verbatim. Then: refocus not attack (no negative competitor framing anywhere); lead with Ezoic-specific "afters"; every number from `proof-points.md` with segment context; infrastructure framing, not "ad network." Fix anything that fails, then deliver.
