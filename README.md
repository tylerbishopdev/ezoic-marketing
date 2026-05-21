# Ezoic Marketing

Ezoic's marketing playbook in code. One entry point routes any marketing, sales, or brand task to a specialist that loads the canonical Ezoic brand system and enforces it end to end — so every output is on-voice, on-positioning, and backed by sourced proof.

**Voice:** direct, confident, technical. **Category:** revenue infrastructure for the modern web.

---

## Start here

```
/ezoic-marketing:start
```

The orchestrator boots the brand context, runs a short triage, builds a brief, then either drafts trivial things inline or routes to the right specialist. Examples it handles:

- "Draft a LinkedIn post from Tyler on the 250K threshold."
- "Build a one-pager for the SaaS monetization play."
- "Make a deck for an enterprise pitch to a $1M+ web app."
- "We need a landing page for ezID."
- "How do we respond to a publisher who says 'we already have AdSense and it's fine'?"
- "Plan a campaign for the AI Bid Flooring launch."
- "Position our rewarded ads product for online games."
- "Review this draft against the brand voice."

You can also invoke any specialist directly; each re-validates against the brand contract.

## Skills

| Skill | Use it for |
|---|---|
| **start** (orchestrator) | Entry point. Triage → brief → draft inline or route. |
| **ezoic-draft-content** | Press release, LinkedIn, X, blog, social, ad copy, FAQ |
| **ezoic-collateral** | One-pagers, product sheets, case studies, battlecards |
| **ezoic-pitch-deck** | Sales/pitch deck outline (+ `.pptx` render when `anthropic-skills:pptx` is installed) |
| **ezoic-landing-page** | Landing pages, microsites, product pages |
| **ezoic-email-compose** | Customer, grandfathered, win-back, nurture, outreach emails |
| **ezoic-objection-response** | Reframes + proof + rep talk-track for objections |
| **ezoic-campaign-strategy** | Multi-channel campaign core + rollout matrix + sequencing |
| **ezoic-positioning-messaging** | Category claim, three-pillar narrative, value-prop ladder, messaging matrix |
| **ezoic-brand-review** | Section-by-section brand audit with severity-tagged fixes |

## How brand truth is resolved

Every skill reads `references/_resolver.md` first, then resolves brand facts in three tiers:

1. **MCP** — the `ezoic-brand` server (`read_brand_guide`, `search_brand_standards`, `list_brand_assets`, `get_brand_asset`), when approved and reachable.
2. **WebFetch** — the live API on `iheartezoic.com` (`/llms-full.txt`, `/api/ezoic-brand`, `/api/ezoic-brand/assets`, …) when MCP is unavailable.
3. **Local references** — the `references/*.md` files bundled with the plugin.

If none of the tiers can resolve a fact, the skill stops and asks — it never fabricates. MCP is optional: everything works via the API and local references. See `INSTALL.md`.

## The brand contract (every output passes)

12 always-on rules plus 6 visual rules, defined in `references/_resolver.md`. The essentials:

- Grep before you write — every product, partner, and stat traces to a canonical source.
- Data-led: every claim backed by a number from `proof-points.md`, cited **with its segment context**.
- Right audience noun — not "publishers" alone when the audience is broader (web apps, games, SaaS, newsletters).
- Category framing is **revenue infrastructure / operating layer** — never ad network, plugin, or tool.
- No CPM dollar claims without a cited source. Refocus, never attack competitors.
- One narrative frame per asset. Customer is the subject.
- Visual: near-black + off-white carry the system, Mint is the single accent, no all-caps/heavy-bold, no fake dashboards, assets only from the live catalog.

Each skill ends by running the 10-point smell test from `brand-voice.md` verbatim.

## Brand source

Canonical brand library: **[iheartezoic.com](https://iheartezoic.com)** (live page, REST API, MCP, and `llms.txt` / `llms-full.txt`). The bundled `references/*.md` are the brand team's operational layer on top of it.

## Install

See **[INSTALL.md](INSTALL.md)**.
