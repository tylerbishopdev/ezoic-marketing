---
name: ezoic-email-compose
description: This skill should be used to write Ezoic emails — when the user asks to "write an email", "draft an email", or needs a customer email, grandfathered-publisher note, win-back email, nurture email, or sales outreach with subject and preview specifics. Produces subject line + preview text + plain-text body + light HTML cues in Ezoic's voice, grounded in the shared references and proof points. Not for multi-touch campaign strategy (use ezoic-campaign-strategy) or free-form content (use ezoic-draft-content).
---

# Ezoic — Email Compose

Write a single email: subject, preview, body, and HTML cues, in Ezoic's voice.

## Step 0 — Boot

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. The 12 + 6 contract is binding.
2. Load from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `channel-playbook.md` (Customer Email + Email Sequence sections, incl. win-back and grandfathered-retention calibrations), `proof-points.md`. Load `audience-segments.md` when the recipient segment isn't already named.

## Step 1 — Confirm the brief

Use the orchestrator's brief block or build the 10-field brief. Name the recipient segment (grandfathered publisher, win-back ex-customer, new-prospect nurture, etc.) and the single goal of the email. Most emails pitch Rung 2 + 3 per `positioning-pillars.md`. If a field can't be filled, stop and ask.

## Step 2 — Produce the email

Output **Subject line · Preview text · Body (plain text) · HTML cues**. Structure per `channel-playbook.md`: opening (one line, direct, not corporate) → the point → supporting bullets → close (open to questions, human signature). One idea, one proof point, one CTA. 250–400 words for customer/retention emails.

Register by recipient:
- **Subject states the conclusion up front** (e.g. the reassurance is in the subject for grandfathered notes).
- **Grandfathered / retention:** reassure first — one clear "you're grandfathered, nothing changes," then context, not repetition. Calm, no urgency language. Mention re-entry policy as a heads-up, never a threat.
- **Win-back:** the "a lot has changed since you were with us" register — lead with what's new (the specific "afters"), low-pressure, no "we miss you," name the competitor without disparaging, plant the idea rather than closing in one touch.
- **Nurture / outreach:** build one idea per touch; no clickbait subjects; no urgency ("Last chance!").

## Step 3 — Self-check

Run the 10-point smell test verbatim. Then: subject states the conclusion; the right register for the recipient segment; no urgency language; one CTA; every number from `proof-points.md` with segment context; audience noun correct. Fix anything that fails, then deliver.
