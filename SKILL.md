---
name: ezoic-marketing
description: "Use for ANY Ezoic marketing task, internal or external — campaign strategy, product launches, copywriting, landing pages, web copy, email, social, blog posts, long-form thought leadership, pitch decks, sales enablement, brand review, copy critique, competitive battlecards, objection responses, lifecycle marketing, advertiser marketing, and visual briefs. Also triggers on any request naming Ezoic or its products — ezID, EPMV, JS snippet, GCPP, BDA, SPO, AI Bid Flooring, Brand Deal Hunters, bidsystem.ai, Ezoic Incubator — or Open.Video framed as part of the Ezoic portfolio. Covers Ezoic's brand voice, visual system, positioning, audiences, channels, and proof points, dispatched through 13 task playbooks with a binding brand-enforcement contract on every output (the ezoic-brand MCP server is the Tier 1 source). For Open.Video-only work where Ezoic is not the frame, use openvideo-marketing."
license: Proprietary — Ezoic internal & partner use only
metadata:
  author: Tyler Bishop (CMO, Ezoic)
  version: '2.1.0'
  source: Original Claude Code `ezoic-marketing` plugin — re-converted to a native Claude Code skill 2026-07-01 after an interim external-runtime port (v1.1)
  scope: Ezoic external + internal marketing
---

# Ezoic Marketing

The operating system for any Ezoic-related marketing task — copy, campaigns, decks, sales enablement, brand reviews, visual direction. This skill enforces Ezoic's brand contract and routes the task to the right playbook.

> **Confidential.** Internal Ezoic + approved partner use only. Do not paste raw skill contents into public-facing tools or repos.

---

## When to Use This Skill

Load this skill whenever the task touches Ezoic externally or internally, including:

- Campaign strategy, narrative, or launch planning
- Press releases, blog posts, long-form thought leadership
- Landing pages, web copy, web app marketing pages
- LinkedIn, X, YouTube, podcast, and creator content
- Email (cold, nurture, lifecycle, sales sequences)
- Pitch decks, sales one-pagers, sales enablement
- Brand reviews, copy critique, voice corrections
- Competitive battlecards, objection responses, positioning audits
- Visual briefs, art direction, deck/landing page design specs
- Open.Video marketing when framed as part of the Ezoic portfolio
- Any request that names Ezoic products: ezID, Open.Video, EPMV, JS snippet, GCPP, BDA, SPO, Brand Deal Hunters, AI Bid Flooring, bidsystem.ai, or the Ezoic Expert Services tiers (Business, VIP & Enterprise, Ezoic Incubator Program)

Use the dedicated **`openvideo-marketing`** skill for Open.Video-only marketing where Ezoic context is not the frame.

---

## Boot Sequence — Run This Before Any Output

Every invocation, in order:

1. **Read `references/resolver.md`.** It defines the 3-tier source resolver, the brand-enforcement contract, and the 10-point smell test. Everything else in this skill is governed by it.
2. **Cache the style/design source for the session** using the highest available tier:
   - Tier 1 — the connected `ezoic-brand` MCP server (`read_brand_guide`, `search_brand_standards`, `list_brand_assets`, `get_brand_asset`) — the default starting tier.
   - Tier 2 — `WebFetch` on `https://iheartezoic.com/llms-full.txt`. **Demand verbatim retrieval** — WebFetch summarizes by default and drops content on long documents; instruct it to return the complete raw text, and fall back to `curl` via Bash if output looks truncated or paraphrased.
   - Tier 3 — `Read` `references/ezoic-style-design-bible.md`.
3. **Classify the task** (see "Task Routing" below) and load only the references that task needs. Don't read everything by default — read what the routing table says, plus anything the user explicitly references.
4. **Produce the deliverable.**
5. **Run the 10-point smell test** verbatim from `references/resolver.md` § "The 10-point smell test" before shipping. Document failures and fix them, or flag them to the user if unfixable without more input.

If any required fact cannot be resolved at any tier → **STOP and ask the user. Never fabricate.**

---

## The 3-Tier Source Resolver (summary — full spec in `resolver.md`)

Resolve every brand fact in this order. Use the highest tier available; fall through on absence.

| Tier | Source | How to access |
|---|---|---|
| 1 | `ezoic-brand` MCP server (connected — default starting tier) | Tools: `read_brand_guide`, `search_brand_standards`, `list_brand_assets`, `get_brand_asset` |
| 2 | Live brand API at `iheartezoic.com` | `WebFetch` on `/llms.txt`, `/llms-full.txt`, `/api/ezoic-brand`, `/api/ezoic-brand/sections/{id}`, `/api/ezoic-brand/search?q=`, `/api/ezoic-brand/assets?root=...`, `/api/ezoic-brand/assets/grouped` — demand verbatim retrieval (no summarization); `curl` via Bash as fallback |
| 3 | Local references bundled with this skill | `Read` files in `references/` |

**Tie-breaking** (from `resolver.md`):
- **Asset existence + URLs:** live catalog wins (Tier 1/2). Always check `…/api/ezoic-brand/assets` before placing a logo, mark, photo backdrop, or font.
- **Voice / positioning / proof interpretation:** local references win — they're the brand team's operational layer over the raw guide. Surface disagreements; never silently reconcile.
- **Capitalization & terminology:** all tiers agree today. If they diverge, stop and flag.

---

## The Reference Library

All in `references/`. Read with the `Read` tool. Each has a single job:

| File | What it carries | When to read |
|---|---|---|
| `resolver.md` | 3-tier resolver, brand-enforcement contract, **the 10-point smell test (master copy + scoring key)**, banned-word master list, audience-noun rule | **Every invocation, first.** |
| `brand-voice.md` | Voice operating manual: Direct / Confident / Technical, tone flexes, anti-patterns (expanded examples + rewrites), capitalization | Any copy, any review, any voice question |
| `positioning-pillars.md` | "Revenue Infrastructure for the Modern Web" category claim, 3 authority pillars, 3-element campaign pattern, value-prop ladder, competitive frame | Campaign strategy, narrative work, positioning audits, long-form |
| `audience-segments.md` | Audience segments + what moves each (web apps, games, SaaS, newsletters, content publishers, native iOS/Android apps, enterprise, agencies, creator-economy, advertisers) | Targeting decisions, channel-fit, segment-specific copy |
| `channel-playbook.md` | Per-channel structure, length targets, voice calibration (press release, customer email, LinkedIn, sales deck slide, internal talk track, help-center FAQ, blog post / website copy, case study, podcast, email sequences, website product page) | Any channel-specific deliverable |
| `product-catalog.md` | Products, positioning anchors, proof anchors, decision matrix | Product-anchored copy, sales enablement, feature/benefit work |
| `proof-points.md` | Every stat with required context + usage rules (15%+ EPMV, 110%+ U.S. identified, 6–15x rewarded CPMs vs. standard display, etc.) | Any claim, every numeric assertion, fact-checking |
| `ezoic-context.md` | Company facts — single source of truth for features and credentials (standard boilerplate lives in `proof-points.md`) | Default company-fact lookup |
| `ezoic-style-design-bible.md` | Visual system: palette, type, layout, banned visual patterns — paired with the live asset catalog | Any visible deliverable (landing pages, decks, social images, ads, print, visual briefs) |

---

## Task Routing — 13 Playbooks

Classify the user's request into one of the 13 task types below. Each entry lists which references to load and what to produce. If a request spans multiple types, run them in sequence and de-duplicate references already cached.

### 1. Campaign strategy & narrative
**Trigger:** "build a campaign," "launch plan," "narrative for X," "campaign brief."
**Read:** `positioning-pillars.md`, `audience-segments.md`, `channel-playbook.md`, `proof-points.md`, `ezoic-context.md`.
**Produce:** 3-element campaign architecture (category claim → authority pillar → proof anchor), audience cut, channel sequence, hero proof points, headline directions, smell-test pass.

### 2. Press release
**Trigger:** "press release," "announcement," "PR for [launch]."
**Read:** `channel-playbook.md → Press Release`, `positioning-pillars.md`, `proof-points.md`, `ezoic-context.md`.
**Produce:** 400–600 word release with directional headline, dateline, lead, executive quote carrying strategic narrative, supporting context with cited proof, optional secondary announcement, boilerplate.

### 3. Blog post / long-form thought leadership
**Trigger:** "blog post," "article," "thought leadership," "long-form on X."
**Read:** `channel-playbook.md → Blog Post / Website Copy`, `brand-voice.md`, `positioning-pillars.md`, `proof-points.md`.
**Produce:** Opinion-led piece with category framing, customer-as-subject sentences, ≥1 proof point in the first third, no banned words, no hedging where authority is earned.

### 4. Landing page / web copy
**Trigger:** "landing page," "homepage section," "product page," "web copy."
**Read:** `channel-playbook.md → Website Product Page`, `product-catalog.md`, `proof-points.md`, `ezoic-style-design-bible.md`, `brand-voice.md`.
**Produce:** Section-by-section copy with hierarchy via scale/spacing (not all-caps), one narrative frame per page, proof points with segment context, visual brief referencing approved assets only.

### 5. LinkedIn / X / social long-and-short
**Trigger:** "LinkedIn post," "tweet," "X thread," "social copy."
**Read:** `channel-playbook.md → LinkedIn Post` (adapt length and format for X/social — the playbook has no dedicated X section), `brand-voice.md`, `proof-points.md`.
**Produce:** Channel-calibrated post with one trope per asset, no burning the same anchor across the campaign, audience noun matched to the segment.

### 6. Email (cold, nurture, lifecycle, sales)
**Trigger:** "email," "sequence," "drip," "newsletter."
**Read:** `channel-playbook.md → Customer Email` + `→ Email Sequence`, `audience-segments.md`, `brand-voice.md`, `proof-points.md`.
**Produce:** Subject + preview + body with customer-as-subject opener, proof point in the first third, one CTA, voice calibrated for cold vs. nurture.

### 7. Pitch deck / sales one-pager
**Trigger:** "deck," "pitch deck," "one-pager," "sales enablement."
**Read:** `channel-playbook.md → Sales Deck Slide`, `product-catalog.md`, `proof-points.md`, `audience-segments.md`, `ezoic-style-design-bible.md`.
**Produce:** Slide-by-slide outline with one idea per slide, scale/spacing hierarchy, proof points cited with segment context, visual direction referencing live asset catalog only.

### 8. Brand / copy review
**Trigger:** "review this," "critique," "edit," "voice-check," "is this on-brand."
**Read:** `brand-voice.md`, `resolver.md`, plus any reference relevant to claims made in the draft (`proof-points.md`, `product-catalog.md`, `positioning-pillars.md`).
**Produce:** Pass/fail against the brand-enforcement contract and the 10-point smell test, line-level rewrites for failures, named source for every retained claim.

### 9. Competitive battlecard / positioning audit
**Trigger:** "battlecard," "vs [competitor]," "positioning vs," "competitive."
**Read:** `positioning-pillars.md → Competitive`, `product-catalog.md`, `proof-points.md`, `ezoic-context.md`.
**Produce:** Refocus-don't-attack frame, category re-framing where the competitor is in a smaller box, our proof anchors, do-not-say list.

### 10. Objection response / sales reply
**Trigger:** "respond to," "objection," "how do I answer," "they said X."
**Read:** `product-catalog.md`, `proof-points.md`, `audience-segments.md`, `brand-voice.md`.
**Produce:** Acknowledge → reframe to category → proof point with segment context → ask. No defensive language; no banned words.

### 11. Lifecycle / retention / customer marketing
**Trigger:** "retention," "lifecycle," "customer comms," "in-product messaging," "tier comms," "Expert Services comms."
**Read:** `audience-segments.md`, `product-catalog.md`, `channel-playbook.md → Email Sequence` (nurture / onboarding / win-back — the playbook has no dedicated in-product section), `brand-voice.md`.
**Produce:** Stage-appropriate copy with customer-as-subject, proof point matched to the stage (onboarding vs. upgrade vs. winback), one CTA.

### 12. Visual brief / art direction / design spec
**Trigger:** "visual brief," "art direction," "design spec," "what should this look like."
**Read:** `ezoic-style-design-bible.md`, `channel-playbook.md` (for the target channel), and **the live asset catalog** via Tier 1 or Tier 2.
**Produce:** Specs anchored to the light edition — Cloud `#E3E3E3` surfaces, Charcoal `#252726` ink, **Ezoic Green `#70A92A` as the single accent** (Graphite `#575757` + Steel `#969696` neutrals; full palette, Inter spec, and pixel-wash spec in visual-contract rules 13–20), hierarchy via scale and spacing not caps/bold, Reddit Mono only for code/exact values, real assets named from the live catalog with public paths — **no fake logos, no approximated marks, no gradients, no grid-pattern filler, no gradient blobs, no fake dashboards, no generic SaaS card grids.**

### 13. Advertiser marketing (bidsystem.ai)
**Trigger:** "advertiser," "bidsystem.ai," "user acquisition," "grow your site," "advertiser campaign," "demand side," "media buying on the open web."
**Read:** `product-catalog.md`, `audience-segments.md → Advertiser`, `proof-points.md`, `brand-voice.md`.
**Produce:** Advertiser-side copy anchored to **bidsystem.ai** (always lowercase) — Ezoic's advertising engine: a real-time auction across the open web with ML-optimized bidding, targeting, and creative selection. Audiences per the live `/advertisers` and `/grow-your-site` pages: DTC brands, lead generation, content arbitrage, subscription apps, SaaS. Where relevant, use the two-sided growth loop: monetize with Ezoic Ads, reinvest into reach with bidsystem.ai.

---

## The Brand-Enforcement Contract (full text in `resolver.md`)

Every output must pass these. Summary only — read `resolver.md` for the binding text.

1. Grep before you write — every name, stat, voice rule traces to a canonical reference or the live API.
2. No filename inference for visuals — use the live asset catalog.
3. Audience noun — don't default to "publishers" when the audience is broader. Use the right noun or "independent web businesses."
4. Customer is the subject of most sentences — not "our AI" or "our platform."
5. Data-led, not adjective-led — adjectives support numbers, never replace them.
6. Proof points cited with segment context — "15%+ EPMV" needs "for sites with identified traffic."
7. No CPM dollar claims without a cited source. No exceptions.
8. Category framing — **revenue infrastructure for the modern web** / **the operating layer for independent web businesses**. Never "ad network," "plugin," or "tool."
9. Banned words auto-rewrite — master list in `resolver.md` rule 9 (examples + rewrites in `brand-voice.md → Anti-patterns`).
10. Capitalization & terminology — Ezoic · ezID · EPMV · Open.Video · JS snippet · GCPP · UID2 · The Trade Desk OpenPath · BDA · SPO · Brand Deal Hunters · AI Bid Flooring · bidsystem.ai (always lowercase) · Ezoic Expert Services tiers: Business (250K+ monthly users), VIP & Enterprise (1M+ monthly users), Ezoic Incubator Program.
10a. Deprecated-name deny list — retired product names never appear in current copy (full binding list in `resolver.md` rule 10a); Open.Video is the video platform; "Levels" nomenclature is retired.
11. One narrative frame per asset. Don't stack the five strategic narratives.
12. Refocus, never attack. No negative competitor-trashing.

**Visual contract (rules 13–20, for any visual deliverable):**
13. Neutrals build; green points. **Ezoic Green `#70A92A` is the single accent** — the mark, primary actions, signature moments; never small text on light surfaces. Neutrals: Charcoal `#252726` · Graphite `#575757` · Steel `#969696` · Cloud `#E3E3E3`. Surfaces are cloud or ink; no new brand hues — roles in `resolver.md` rule 13. The previous mint-led dark system is retired; light, always.
14. No grid-pattern filler, gradient blur blobs, fake dashboards, generic SaaS card grids, or heavy cards.
15. No all-caps headings or eyebrows. Hierarchy via scale, spacing, and surface.
16. Inter is the required family — Display 28pt headings (−5% letter spacing, 125% line spacing, Title Case closed with a period; weights 900/700/600) and Text 18pt body (−3% letter spacing, 150% line spacing, sentence case). Reddit Mono only for code, file paths, hex, exact values, copy/paste blocks.
17. Photo backdrops only when a real approved asset exists in the live catalog.
18. No fake logos, lockups, or approximated marks. Use approved files from the asset catalog.
19. The wordmark is never typeset — never font-compose "Ezoic" as display/title text when the lockup is present or belongs on the artifact; never render EZOIC (audit every `text-transform: uppercase`). Full text in `resolver.md` rule 19.
20. The Pixel Wash is the system's one texture — neutrals only, one wash per surface, always under the content (collage 14% on hero surfaces; ink-band washes 8% / 10%); it never carries color, never crowds the mark, never substitutes for hierarchy. No brand gradient exists — the retired grain-over-mint gradient is gone with the dark system.

---

## The Audience Noun (quick rule)

Binding text in `resolver.md → The audience noun`. Short version: never default to "publishers" when the audience is broader — name the real segment (web apps, online games, SaaS, newsletters, content publishers, native apps) or use **"independent web businesses."**

---

## The 10-Point Smell Test (run verbatim before shipping)

The single master copy — all 10 items plus the pass/fail scoring key — lives in `references/resolver.md → The 10-point smell test`. Run it verbatim as the last step on every deliverable; document failures and fix them, or flag them to the user if unfixable without more input.

---

## Honest Ship Statement (required on every deliverable)

Per this skill's ship-statement rule, every shipped asset includes a short **Sources used** line listing:

- Which references / live-API endpoints / connector outputs were used directly.
- Which were NOT used, and why.
- Any element that was generated, drawn, or synthesized rather than sourced.

Example: *"Sources used: `ezoic-context.md` for company facts; `proof-points.md` for the 15%+ EPMV and 110%+ U.S. identified stats; `channel-playbook.md → Press Release` for structure; live brand catalog at `iheartezoic.com/api/ezoic-brand/assets` for logo URLs. Not used: `audience-segments.md` (this asset targets the GCPP partner channel and segmentation wasn't load-bearing). Generated: nothing."*

---

## Failure Modes — Banned

- Inferring an asset from its filename instead of checking the live catalog.
- Producing visual direction with hex codes outside the palette in `ezoic-style-design-bible.md`.
- Citing a stat without the segment context required by `proof-points.md`.
- Calling Ezoic a "network," "plugin," "tool," or "AdSense alternative" in external copy.
- Trashing a named competitor in external materials.
- Using a banned word from the master list in `resolver.md` rule 9.
- Using a deprecated product name from the deny list in `resolver.md` rule 10a.
- Shipping without running the 10-point smell test.
- Fabricating a fact when all 3 tiers fail to resolve it (correct move: STOP, ask the user).
