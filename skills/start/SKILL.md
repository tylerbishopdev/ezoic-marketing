---
name: start
description: This skill should be used as the entry point for any Ezoic marketing, sales, or brand task — when the user asks to "draft" or "write" content, "make a one-pager / case study / product sheet", "build a deck" or "slides", "create a landing page", "write an email", "respond to an objection", "plan a campaign", "position this" or "write messaging for", or "is this on-brand / review this". Invoked as /ezoic-marketing:start. Loads the canonical Ezoic brand context (voice, positioning, audiences, channels, products, proof, design system) from iheartezoic.com and the shared references, runs a short triage, builds a brief, then drafts inline or routes to the right Ezoic specialist skill.
---

# Ezoic Marketing — Orchestrator (`/ezoic-marketing:start`)

The single entry point for Ezoic marketing, sales, and brand work. Boot the brand context, triage the request, build a brief, then draft trivial things inline or route to a specialist with the brief in hand.

Write in Ezoic's voice: **direct, confident, technical.** Every output passes the brand contract.

## Step 0 — Boot the brand context (mandatory, every invocation)

1. Read `${CLAUDE_PLUGIN_ROOT}/references/_resolver.md` first. It carries the 3-tier resolver (MCP → WebFetch → local), the tie-breaking rules, the **12 + 6 brand-enforcement contract**, the audience-noun rule, and the **10-point smell test**. Treat it as binding.
2. Load style/design truth via the resolver: Tier 1 `read_brand_guide(section="style")` → Tier 2 `https://iheartezoic.com/llms-full.txt` → Tier 3 `${CLAUDE_PLUGIN_ROOT}/references/ezoic-style-design-bible.md`. Cache for the session.
3. Load the core references from `${CLAUDE_PLUGIN_ROOT}/references/`: `brand-voice.md`, `positioning-pillars.md`, `audience-segments.md`, `channel-playbook.md`, `product-catalog.md`, `proof-points.md`, `ezoic-context.md`. (`ezoic-context-full.md` is the deep-dive fallback — only when `ezoic-context.md` can't resolve a fact.)

If any required reference is missing, name which one and stop. Missing reference = no canonical source = no content. If the `ezoic-brand` MCP is not approved or unreachable, fall through to WebFetch then local references — never block.

## Step 1 — Triage the request

Answer four questions. Infer when obvious; ask only when genuinely ambiguous.

| Question | Why it matters |
|---|---|
| What's the deliverable? | Picks the specialist (or inline) |
| Which channel / format? | Picks per-channel structure from `channel-playbook.md` |
| Which audience segment (ICP)? | Calibrates voice + pillar + proof from `audience-segments.md` |
| What's the strategic intent? | Picks the one narrative frame |

## Step 2 — Build the brief

Restate the request as a brief block before doing anything else:

```
Deliverable:       [press release | one-pager | case study | deck | landing page | email | objection | campaign | positioning | review | …]
Channel:           [LinkedIn | press | customer email | sales enablement | product page | …]
Audience (ICP):    [one named segment from audience-segments.md]
Author/speaker:    [Dwayne Lafleur | Tyler Bishop | Ezoic | unspecified]
Pillar:            [Expertise | Technical Chops | Outcomes]
Narrative frame:   [one of the 5 strategic narratives — never more than one]
Primary proof:     [exact stat from proof-points.md, with required segment context]
Value-prop rung:   [1–5 per positioning-pillars.md ladder]
Voice calibration: [formality / energy / technical depth per channel-playbook.md]
Length target:     [from channel-playbook.md]
Visual direction:  [only if the asset will be seen — see ezoic-style-design-bible.md + live asset catalog]
```

If any field cannot be filled from canonical sources, stop and ask. Never guess ICP, pillar, or proof point.

## Step 3 — Route or draft inline

For a trivial single-sentence rewrite or one short line, draft inline using the contract. Otherwise hand the brief block to the specialist:

| User asked for | Route to |
|---|---|
| Write / draft / produce [channel] copy (press, LinkedIn, X, blog, social, ad, FAQ) | `ezoic-draft-content` |
| One-pager / product sheet / case study / battlecard | `ezoic-collateral` |
| Deck / slides / presentation | `ezoic-pitch-deck` |
| Landing page / microsite | `ezoic-landing-page` |
| Email (subject/preview specifics; customer / win-back / outreach) | `ezoic-email-compose` |
| How do we respond to [objection] / rebuttal | `ezoic-objection-response` |
| Plan a campaign / multi-channel / launch / win-back motion | `ezoic-campaign-strategy` |
| Position this / messaging for / value prop / narrative | `ezoic-positioning-messaging` |
| Is this on-brand / review / audit / smell test | `ezoic-brand-review` |
| Just the brief / "scope this" | Deliver the Step 2 brief block, then ask whether to draft or route |

When routing, hand off the full brief block. The specialist re-validates against the contract before producing.

## Step 4 — Brand-enforcement contract

The 12 + 6 rules in `_resolver.md` apply to every output. Do not restate them from memory — they are binding as written there. Highest-frequency failures to watch: defaulting to "publishers" when the audience is broader; a claim with no number from `proof-points.md`; "ad network / plugin / tool" framing; a proof point cited without its segment context.

## Step 5 — Self-check before delivery

Run the **10-point smell test** from `_resolver.md` verbatim. Then three orchestrator checks:

1. Did I cite at least one proof point with its required segment context?
2. Did I default to "publishers" when the audience is actually broader?
3. Did I frame Ezoic as an "ad network / plugin / tool" anywhere?

Fix anything that fails before delivering.
