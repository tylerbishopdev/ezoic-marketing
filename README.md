# Ezoic Marketing — Claude Skill

The operating system for any Ezoic-related marketing task: copy, campaigns, decks, sales enablement, brand reviews, and visual direction. The skill enforces Ezoic's brand contract and routes each request to the right playbook.

> **Confidential — Ezoic internal & approved-partner use only.** See [`LICENSE`](LICENSE). Do not paste raw skill contents into public-facing tools or repos.

## What it does

Loads for any external- or internal-facing Ezoic marketing request and produces on-brand output governed by a 3-tier source resolver and a 12-rule brand-enforcement contract. Bundles the full marketing knowledge base — company context, brand voice (Direct / Confident / Technical), visual system, product catalog, audience segments, positioning pillars, channel playbooks, and proof points — plus 12 task-specific playbooks the skill dispatches to based on intent.

## Install

Place this skill at `~/.claude/skills/ezoic-marketing/` (clone the repo there, or copy the folder). Claude auto-discovers it from `SKILL.md`.

```
git clone git@github.com:tylerbishopdev/ezoic-marketing.git ~/.claude/skills/ezoic-marketing
```

## Structure

- `SKILL.md` — entry point: boot sequence, the 12-playbook task router, the brand contract, and the 10-point smell test.
- `references/` — the knowledge base:
  - `resolver.md` — 3-tier source resolver, 12-rule brand contract, 10-point smell test (read first, every invocation)
  - `brand-voice.md` · `positioning-pillars.md` · `audience-segments.md` · `channel-playbook.md`
  - `product-catalog.md` · `proof-points.md` · `ezoic-context.md` · `ezoic-context-full.md`
  - `ezoic-style-design-bible.md`

## Source of truth

The live brand system at **[iheartezoic.com](https://iheartezoic.com)** (REST API · `llms.txt` · MCP server) is the canonical tier. The bundled `references/` are the offline tier. Always check the live asset catalog before placing a logo, mark, photo backdrop, or font.

---

Author: Tyler Bishop (CMO, Ezoic).
