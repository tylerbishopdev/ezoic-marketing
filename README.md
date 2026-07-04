# Ezoic Marketing — Claude Skill

The operating system for any Ezoic-related marketing task: copy, campaigns, decks, sales enablement, brand reviews, and visual direction. The skill enforces Ezoic's brand contract and routes each request to the right playbook.

> **Confidential — Ezoic internal & approved-partner use only.** See [`LICENSE`](LICENSE). Do not paste raw skill contents into public-facing tools or repos.

## What it does

Loads for any external- or internal-facing Ezoic marketing request and produces on-brand output governed by a 3-tier source resolver and a binding brand-enforcement contract. Bundles the full marketing knowledge base — company context, brand voice (Direct / Confident / Technical), visual system, product catalog, audience segments, positioning pillars, channel playbooks, and proof points — plus 13 task-specific playbooks the skill dispatches to based on intent.

## Install

Place this skill at `~/.claude/skills/ezoic-marketing/` (clone the repo there, or copy the folder). Claude auto-discovers it from `SKILL.md`.

```
git clone git@github.com:tylerbishopdev/ezoic-marketing.git ~/.claude/skills/ezoic-marketing
```

## Structure

- `SKILL.md` — entry point: boot sequence, the 13-playbook task router, and the brand-contract summary.
- `references/` — the knowledge base:
  - `resolver.md` — 3-tier source resolver, the binding brand-enforcement contract, and the 10-point smell test master copy (read first, every invocation)
  - `brand-voice.md` · `positioning-pillars.md` · `audience-segments.md` · `channel-playbook.md`
  - `product-catalog.md` · `proof-points.md` · `ezoic-context.md`
  - `ezoic-style-design-bible.md`

## Source of truth

The visual system is the **Ezoic Brand Style Guide — experimental v0.1** (Brand standards / Vol. 02 — 2026 / Light edition): light, editorial, type-led — Ezoic Green `#70A92A` as the single accent over Charcoal/Graphite/Steel/Cloud neutrals, Inter (−5%/125% headings · −3%/150% body), Reddit Mono for exact values, and the Pixel Wash as the one texture. Its web edition lives at `brand-site/index.html`; `references/ezoic-style-design-bible.md` is the matching rules layer.

Tie-breaking follows `references/resolver.md → Tie-breaking`: the live brand system at **[iheartezoic.com](https://iheartezoic.com)** (`ezoic-brand` MCP server · REST API · `llms.txt`) is canonical for **asset existence and URLs** — always check the live asset catalog before placing a logo, mark, photo backdrop, or font. The bundled `references/` **win for voice, positioning, and proof interpretation** — they are the brand team's operational layer over the raw guide. Capitalization and terminology must agree across tiers; if they diverge, stop and flag.

Logo, wordmark, and lockup specimens must use approved asset catalog files. The wordmark is never typeset; no font-composed stand-ins — enforced by visual-contract rules 18–19 in `references/resolver.md` and the design bible's logo section.

---

Author: Tyler Bishop (CMO, Ezoic).
