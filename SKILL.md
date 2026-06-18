---
name: ezoic-marketing
description: "Comprehensive Ezoic marketing operating system. Loads for any external- or internal-facing Ezoic marketing task — campaign strategy, product launches, copywriting, landing pages, email, social, blog, long-form, pitch decks, sales enablement, brand reviews, competitive battlecards, objection responses, lifecycle marketing, and visual briefs. Bundles Ezoic's full marketing knowledge base: company context, brand voice (Direct / Confident / Technical), brand visual system, product catalog, audience segments, positioning pillars, channel playbooks, and proof points. Uses a 3-tier source resolver (live MCP brand server → live brand API at iheartezoic.com → bundled local references) and a 12-rule brand-enforcement contract that every output must pass. Includes 12 task-specific playbooks the agent dispatches to based on intent. Confidential — Ezoic internal + partner use only."
license: Proprietary — Ezoic internal & partner use only
metadata:
  author: Tyler Bishop (CMO, Ezoic)
  version: '1.1-pplx'
  source: Converted from the Claude Code `ezoic-marketing` plugin
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
- Any request that names Ezoic products: ezID, Open.Video, EPMV, JS snippet, GCPP, BDA, SPO, Brand Deal Hunters, AI Bid Flooring, Levels

Use the dedicated **`openvideo-marketing`** skill for Open.Video-only marketing where Ezoic context is not the frame.

---

## Boot Sequence — Run This Before Any Output

Every invocation, in order:

1. **Read `references/resolver.md`.** It defines the 3-tier source resolver, the 12-rule brand contract, and the 10-point smell test. Everything else in this skill is governed by it.
2. **Cache the style/design source for the session** using the highest available tier:
   - Tier 1 — `ezoic-brand` MCP server (not currently available in Perplexity Computer; check `list_external_tools` queries `["ezoic", "ezoic-brand"]` in case a connector has been added).
   - Tier 2 — `fetch_url` on `https://iheartezoic.com/llms-full.txt` (default starting tier in Perplexity).
   - Tier 3 — `read` `references/ezoic-style-design-bible.md`.
3. **Classify the task** (see "Task Routing" below) and load only the references that task needs. Don't read everything by default — read what the routing table says, plus anything the user explicitly references.
4. **Produce the deliverable.**
5. **Run the 10-point smell test** verbatim from `references/resolver.md` § "The 10-point smell test" before shipping. Document failures and fix them, or flag them to the user if unfixable without more input.

If any required fact cannot be resolved at any tier → **STOP and ask the user. Never fabricate.**

---

## The 3-Tier Source Resolver (summary — full spec in `resolver.md`)

Resolve every brand fact in this order. Use the highest tier available; fall through on absence.

| Tier | Source | How to access in Perplexity |
|---|---|---|
| 1 | `ezoic-brand` MCP server | Not available in Perplexity Computer today. If `list_external_tools` ever shows an `ezoic-brand` connector, prefer it. |
| 2 | Live brand API at `iheartezoic.com` | `fetch_url` on `/llms.txt`, `/llms-full.txt`, `/api/ezoic-brand`, `/api/ezoic-brand/sections/{id}`, `/api/ezoic-brand/search?q=`, `/api/ezoic-brand/assets?root=...`, `/api/ezoic-brand/assets/grouped` |
| 3 | Local references bundled with this skill | `read` files in `references/` |

**Tie-breaking** (from `resolver.md`):
- **Asset existence + URLs:** live catalog wins (Tier 1/2). Always check `…/api/ezoic-brand/assets` before placing a logo, mark, photo backdrop, or font.
- **Voice / positioning / proof interpretation:** local references win — they're the brand team's operational layer over the raw guide. Surface disagreements; never silently reconcile.
- **Capitalization & terminology:** all tiers agree today. If they diverge, stop and flag.

---

## The Reference Library

All in `references/`. Read with the `read` tool. Each has a single job:

| File | What it carries | When to read |
|---|---|---|
| `resolver.md` | 3-tier resolver, 12-rule brand contract, 10-point smell test, audience-noun rule | **Every invocation, first.** |
| `brand-voice.md` | Voice operating manual: Direct / Confident / Technical, tone flexes, anti-patterns, banned words, capitalization, the 10-point smell test in full | Any copy, any review, any voice question |
| `positioning-pillars.md` | "Revenue Infrastructure for the Modern Web" category claim, 3 authority pillars, 3-element campaign pattern, value-prop ladder, competitive frame | Campaign strategy, narrative work, positioning audits, long-form |
| `audience-segments.md` | Audience segments + what moves each (web apps, games, SaaS, newsletters, content publishers, enterprise, agencies, creator-economy) | Targeting decisions, channel-fit, segment-specific copy |
| `channel-playbook.md` | Per-channel structure, length targets, voice calibration (press release, blog, landing page, LinkedIn, X, YouTube, email, sales deck, etc.) | Any channel-specific deliverable |
| `product-catalog.md` | Products, positioning anchors, proof anchors, decision matrix | Product-anchored copy, sales enablement, feature/benefit work |
| `proof-points.md` | Every stat with required context + usage rules (15%+ EPMV, 110%+ U.S. identified, 10× CPM rewarded, etc.) | Any claim, every numeric assertion, fact-checking |
| `ezoic-context.md` | Company facts — single source of truth for features, credentials, boilerplate | Default company-fact lookup |
| `ezoic-context-full.md` | Deep-dive fallback for company facts | Only when `ezoic-context.md` can't resolve a fact |
| `ezoic-style-design-bible.md` | Visual system: palette, type, layout, banned visual patterns — paired with the live asset catalog | Any visible deliverable (landing pages, decks, social images, ads, print, visual briefs) |

---

## Task Routing — 12 Playbooks

Classify the user's request into one of the 12 task types below. Each entry lists which references to load and what to produce. If a request spans multiple types, run them in sequence and de-duplicate references already cached.

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
**Read:** `channel-playbook.md → Blog / Long-form`, `brand-voice.md`, `positioning-pillars.md`, `proof-points.md`.
**Produce:** Opinion-led piece with category framing, customer-as-subject sentences, ≥1 proof point in the first third, no banned words, no hedging where authority is earned.

### 4. Landing page / web copy
**Trigger:** "landing page," "homepage section," "product page," "web copy."
**Read:** `channel-playbook.md → Landing Page`, `product-catalog.md`, `proof-points.md`, `ezoic-style-design-bible.md`, `brand-voice.md`.
**Produce:** Section-by-section copy with hierarchy via scale/spacing (not all-caps), one narrative frame per page, proof points with segment context, visual brief referencing approved assets only.

### 5. LinkedIn / X / social long-and-short
**Trigger:** "LinkedIn post," "tweet," "X thread," "social copy."
**Read:** `channel-playbook.md → LinkedIn / X / Social`, `brand-voice.md`, `proof-points.md`.
**Produce:** Channel-calibrated post with one trope per asset, no burning the same anchor across the campaign, audience noun matched to the segment.

### 6. Email (cold, nurture, lifecycle, sales)
**Trigger:** "email," "sequence," "drip," "newsletter."
**Read:** `channel-playbook.md → Email`, `audience-segments.md`, `brand-voice.md`, `proof-points.md`.
**Produce:** Subject + preview + body with customer-as-subject opener, proof point in the first third, one CTA, voice calibrated for cold vs. nurture.

### 7. Pitch deck / sales one-pager
**Trigger:** "deck," "pitch deck," "one-pager," "sales enablement."
**Read:** `channel-playbook.md → Sales Deck / One-Pager`, `product-catalog.md`, `proof-points.md`, `audience-segments.md`, `ezoic-style-design-bible.md`.
**Produce:** Slide-by-slide outline with one idea per slide, scale/spacing hierarchy, proof points cited with segment context, visual direction referencing live asset catalog only.

### 8. Brand / copy review
**Trigger:** "review this," "critique," "edit," "voice-check," "is this on-brand."
**Read:** `brand-voice.md`, `resolver.md`, plus any reference relevant to claims made in the draft (`proof-points.md`, `product-catalog.md`, `positioning-pillars.md`).
**Produce:** Pass/fail against the 12-rule brand contract and the 10-point smell test, line-level rewrites for failures, named source for every retained claim.

### 9. Competitive battlecard / positioning audit
**Trigger:** "battlecard," "vs [competitor]," "positioning vs," "competitive."
**Read:** `positioning-pillars.md → Competitive`, `product-catalog.md`, `proof-points.md`, `ezoic-context.md`.
**Produce:** Refocus-don't-attack frame, category re-framing where the competitor is in a smaller box, our proof anchors, do-not-say list.

### 10. Objection response / sales reply
**Trigger:** "respond to," "objection," "how do I answer," "they said X."
**Read:** `product-catalog.md`, `proof-points.md`, `audience-segments.md`, `brand-voice.md`.
**Produce:** Acknowledge → reframe to category → proof point with segment context → ask. No defensive language; no banned words.

### 11. Lifecycle / retention / customer marketing
**Trigger:** "retention," "lifecycle," "customer comms," "in-product messaging," "Levels comms."
**Read:** `audience-segments.md`, `product-catalog.md`, `channel-playbook.md → Lifecycle / In-product`, `brand-voice.md`.
**Produce:** Stage-appropriate copy with customer-as-subject, proof point matched to the stage (onboarding vs. upgrade vs. winback), one CTA.

### 12. Visual brief / art direction / design spec
**Trigger:** "visual brief," "art direction," "design spec," "what should this look like."
**Read:** `ezoic-style-design-bible.md`, `channel-playbook.md` (for the target channel), and **the live asset catalog** via Tier 1 or Tier 2.
**Produce:** Specs anchored to `#0B0C0B` near-black, `#F5F9F1` off-white, `#BBFFA6` mint accent (Lime `#A2D860` + Frog `#3D5C17` support, never replace Mint), hierarchy via scale and spacing not caps/bold, Red Hat Mono only for code/exact values, real assets named from the live catalog with public paths — **no fake logos, no approximated marks, no grid-pattern filler, no gradient blobs, no fake dashboards, no generic SaaS card grids.**

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
9. Banned words auto-rewrite — see `brand-voice.md → Anti-patterns`.
10. Capitalization & terminology — Ezoic · ezID · EPMV · Open.Video · JS snippet · GCPP · UID2 · The Trade Desk OpenPath · BDA · SPO · Brand Deal Hunters · AI Bid Flooring · Levels.
11. One narrative frame per asset. Don't stack the five strategic narratives.
12. Refocus, never attack. No negative competitor-trashing.

**Visual contract (rules 13–18, for any visual deliverable):**
13. `#0B0C0B` near-black + `#F5F9F1` off-white carry the system. **`#BBFFA6` mint is the single accent.** Lime `#A2D860` + Frog `#3D5C17` support Mint, never replace it.
14. No grid-pattern filler, gradient blur blobs, fake dashboards, generic SaaS card grids, or heavy cards.
15. No all-caps headings or eyebrows. Hierarchy via scale, spacing, and surface.
16. Red Hat Mono only for code, file paths, hex, exact values, copy/paste blocks.
17. Photo backdrops only when a real approved asset exists in the live catalog.
18. No fake logos, lockups, or approximated marks. Use approved files from the asset catalog.

---

## The Audience Noun (quick rule)

Ezoic's audience is **web apps, online games, SaaS, newsletters, and content publishers** — not just "publishers." Use "publishers" alone only inside publisher-community channels, legacy AdSense / GCPP contexts, or SEO copy where the term carries search volume. For upmarket, enterprise, web-app, game, or SaaS materials, name the real audience or use **"independent web businesses."**

---

## The 10-Point Smell Test (run verbatim before shipping — full text in `resolver.md` / `brand-voice.md`)

1. The beer test — would I say this to an actual publisher at a bar?
2. Could any other ad-tech company have written this?
3. Is the customer the subject of most sentences?
4. More adjectives than numbers?
5. Specific proof point in the first third?
6. Would a skeptical CTO/revenue lead think "these people understand my business"?
7. Am I burning a trope in an asset that doesn't earn it?
8. Have I used only "publishers" when the audience is broader?
9. Is the category framing "ad network" or "plugin" anywhere?
10. Am I hedging where authority is earned?

A "yes" on items 2, 4, 7, 8, 9 or a "no" on 1, 3, 5, 6, 10 = **rewrite before shipping.**

---

## Honest Ship Statement (required on every deliverable)

Per Tyler's `operating-rules`, every shipped asset includes a short **Sources used** line listing:

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
- Using a banned word from `brand-voice.md → Anti-patterns`.
- Shipping without running the 10-point smell test.
- Fabricating a fact when all 3 tiers fail to resolve it (correct move: STOP, ask the user).
