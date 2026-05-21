---
name: ezoic-campaign-strategy
description: This skill should be used to plan an Ezoic marketing campaign — when the user asks to "plan a campaign", "build a launch playbook", "multi-channel plan", "win-back motion", or "go-to-market for [product/announcement]". Produces a 3-element campaign core (WHAT / WHY / HOW), a per-channel rollout matrix, and sequencing, grounded in the shared references. Not for the final copy itself (route channels to ezoic-draft-content, ezoic-email-compose, etc.).
---

# Ezoic — Campaign Strategy

Plan a coherent multi-channel campaign that resolves to one three-element core narrative.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 12 + 6 contract is binding.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `positioning-pillars.md`, `audience-segments.md`, `channel-playbook.md`, `proof-points.md`.

## Step 1 — Confirm the campaign brief

Name the campaign trigger (product, announcement, motion), the primary audience segment, and the strategic intent. If the campaign touches segments with conflicting interests (e.g. a threshold change that lands positively for scale prospects and negatively for grandfathered-under-threshold publishers), plan separate assets per segment — don't force one-size-fits-all.

## Step 2 — Build the 3-element core

Per `positioning-pillars.md → Campaign-level narrative`, fill all three cells; each must be mutually reinforcing:

```
Element 1 — WHAT  (the concrete news / product / change)        | what it signals
Element 2 — WHY   (the direction / strategic reason)            | what it signals
Element 3 — HOW   (the enabler / friction-killer / proof)       | what it signals
```

Do not ship the plan until all three cells are filled and reinforce each other. If any cell is weak, the campaign is not ready.

## Step 3 — Per-channel rollout matrix

Use `channel-playbook.md → Channel selection matrix`. Every campaign touches at least three channels. For each channel: the primary message, the value-prop rung, the asset to produce, and which specialist skill produces it (`ezoic-draft-content`, `ezoic-email-compose`, `ezoic-pitch-deck`, etc.). Add sequencing (what ships first, what follows).

## Step 4 — Self-check

Run the 10-point smell test verbatim. Then the campaign guardrails:
- Three-element core is filled and mutually reinforcing.
- **Trope-burn check:** the same trope must not anchor more than two primary assets (`brand-voice.md → Trope rotation rule`). Flag the risk if it appears.
- Each segment touched by public channels is written for without alienating the others.
- Every proof point carries segment context.

Fix anything that fails, then deliver the plan. Hand individual assets off to the producing specialists.
