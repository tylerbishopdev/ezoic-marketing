# Ezoic Marketing — Source Resolver & Brand Contract

Every skill in this plugin reads this file **first**, before producing or reviewing anything. It defines three things:

1. **Where canonical truth comes from, and in what order** (the 3-tier resolver).
2. **The brand-enforcement contract** every output must pass.
3. **The smell test** that runs as the final step in every skill.

All local references live in `${CLAUDE_PLUGIN_ROOT}/references/`. The live brand library lives at `iheartezoic.com` (MCP, REST API, and `llms.txt` / `llms-full.txt`).

---

## The 3-tier resolver

Resolve every brand fact in this order. Use the highest tier available; fall through on absence.

### Tier 1 — MCP server `ezoic-brand` (preferred when approved + reachable)

| Tool | Use |
|---|---|
| `read_brand_guide(section?, format?)` | Full guide or one section. Sections: `style`, `intro`, `logo`, `variants`, `color`, `type`, `voice`, `elements`, `case-study`, `access`, `footer`. |
| `search_brand_standards(query, limit?)` | Keyword search across standards, palette, type, logo, photo, components, voice. |
| `list_brand_assets(root?, query?)` | Live asset catalog. Roots: `brand`, `design-elements`, `photo-backs`, `fonts`, `all`. |
| `get_brand_asset(publicPath)` | One asset's metadata + live `https://iheartezoic.com` URL (e.g. `/brand/lockup-light.png`). |

### Tier 2 — WebFetch the live API (when MCP is unapproved or unreachable)

```
GET https://iheartezoic.com/llms.txt                     # compact index
GET https://iheartezoic.com/llms-full.txt                # full guide markdown
GET https://iheartezoic.com/api/ezoic-brand              # full structured JSON
GET https://iheartezoic.com/api/ezoic-brand/sections/{id}
GET https://iheartezoic.com/api/ezoic-brand/search?q=
GET https://iheartezoic.com/api/ezoic-brand/assets?root=brand|design-elements|photo-backs|fonts|all
GET https://iheartezoic.com/api/ezoic-brand/assets/grouped
```

### Tier 3 — Local references (offline / fastest)

`${CLAUDE_PLUGIN_ROOT}/references/*.md` — the files listed under **Boot sequence** below.

**If Tier 3 also lacks a needed fact → STOP. Ask the user. Never fabricate.**

**Graceful degradation:** No skill ever hard-fails because MCP is absent. If `ezoic-brand` is not approved or is unreachable, fall through to Tier 2, then Tier 3, without halting. The MCP server is a typed convenience over the same data the API and local references carry.

---

## Tie-breaking

- **Asset existence and URLs:** the live catalog wins (Tier 1 `list_brand_assets` / Tier 2 `/api/ezoic-brand/assets`). It is the source of truth for which files actually exist. Always check it before placing a logo, mark, photo backdrop, or font.
- **Voice / positioning / proof interpretation:** local references win — they are the brand team's operational layer on top of the raw guide. Surface any disagreement to the user; never silently reconcile.
- **Capitalization & terminology:** all tiers currently agree. If they ever diverge, stop and flag.

---

## Boot sequence (every skill, every invocation)

1. Read **this file**.
2. For style/design truth, prefer Tier 1 `read_brand_guide(section="style")` → Tier 2 `/llms-full.txt` → Tier 3 `ezoic-style-design-bible.md`. Cache for the session.
3. Load the skill's specific references (each `SKILL.md` names which ones it needs).

Local references — all in `${CLAUDE_PLUGIN_ROOT}/references/`:

| File | What it carries |
|---|---|
| `brand-voice.md` | Voice operating manual; tone flexes; anti-patterns; capitalization; **the 10-point smell test** |
| `positioning-pillars.md` | Category claim, 3 authority pillars, campaign 3-element pattern, value-prop ladder, competitive |
| `audience-segments.md` | The audience segments and what moves each |
| `channel-playbook.md` | Per-channel structure, length targets, voice calibration |
| `product-catalog.md` | Products, positioning anchors, proof anchors, decision matrix |
| `proof-points.md` | Every stat with required context + usage rules |
| `ezoic-context.md` | Company facts — single source of truth for features, credentials, boilerplate |
| `ezoic-context-full.md` | Deep-dive fallback — consult only when `ezoic-context.md` can't resolve a fact |
| `ezoic-style-design-bible.md` | Visual system (palette, type, layout, banned patterns) — the rules layer paired with the live asset catalog |

If a required reference is missing, name which one and stop. Missing reference = no canonical source = no content.

---

## The brand-enforcement contract (12 rules — every output must pass)

1. **Grep before you write.** Every named product, partner, stat, voice rule, or workflow traces to a canonical reference or the live API. If it isn't there, don't write it.
2. **No filename inference for visuals.** Use the live asset catalog (`list_brand_assets` / `/api/ezoic-brand/assets`); never infer what a file shows from its name.
3. **The audience noun.** Don't default to "publishers" when the audience is broader — web apps, online games, SaaS, newsletters, content publishers. Use the right noun per `audience-segments.md`, or "independent web businesses."
4. **Customer is the subject.** Most sentences have the customer as the subject — not "our AI" or "our platform."
5. **Data-led, not adjective-led.** Every claim is backed by a number from `proof-points.md`. Adjectives support numbers; they don't replace them.
6. **Proof points cited with segment context.** "15%+ EPMV lift" is meaningless without "for sites with identified traffic"; "110%+" needs "for U.S. identified users."
7. **No CPM dollar claims without a cited source.** No exceptions.
8. **Category framing.** Ezoic is **revenue infrastructure for the modern web** / **the operating layer for independent web businesses**. Never "ad network," "plugin," or "tool."
9. **Banned words auto-rewrite.** revolutionary, game-changing, best-in-class, cutting-edge, world-class, next-generation, disruptive, unleash, empower, elevate, supercharge, transform (as a verb about us), leverage, "in today's fast-paced digital landscape." See `brand-voice.md → Anti-patterns`.
10. **Capitalization & terminology (exact).** Ezoic · ezID · EPMV · Open.Video · JS snippet · Google Premier Certified Publishing Partner (GCPP) · UID2 · The Trade Desk OpenPath · Big Data Analytics (BDA) · Supply-Path Optimization (SPO) · Brand Deal Hunters · AI Bid Flooring · Levels. See `brand-voice.md → Capitalization & terminology`.
11. **One narrative frame per asset.** Don't stack the five strategic narratives. The same trope in 3+ assets across a campaign is burning it.
12. **Refocus, never attack.** No negative competitor-trashing in external materials, ever.

### Visual contract (rules 13–18 — load for any skill producing visual direction)

13. Near-black `#0B0C0B` + off-white `#F5F9F1` carry the system. **Mint `#BBFFA6` is the single accent.** Lime `#A2D860` and Frog `#3D5C17` support Mint; they don't replace it.
14. No grid-pattern filler, gradient blur blobs, fake dashboards, generic SaaS card grids, or heavy cards.
15. No all-caps headings or eyebrows. Hierarchy via scale, spacing, and surface — not bold or caps.
16. Red Hat Mono only for code, file paths, hex, exact values, and copy/paste blocks. Never decorative.
17. Photo backdrops only when a real approved asset exists in the live catalog. Otherwise a quiet editorial surface with an open media slot.
18. No fake logos, lockups, or approximated marks. Use approved files from the asset catalog.

---

## The audience noun (quick rule)

Ezoic's audience is **web apps, online games, SaaS, newsletters, and content publishers** — not just "publishers." Use "publishers" alone only inside publisher-community channels, legacy AdSense / GCPP contexts, or SEO copy where the term carries search volume. For upmarket, enterprise, web-app, game, or SaaS materials, name the real audience or use **"independent web businesses."**

---

## The 10-point smell test (run verbatim as the last step in every skill)

Read the draft and answer:

1. **The beer test.** Would I say this to an actual publisher at a bar? If not — rewrite.
2. Could any other ad-tech company have written this? If yes — rewrite.
3. Is the customer (the digital business / independent web business, not just "publishers") the subject of most sentences? If no — rewrite.
4. Are there more adjectives than numbers? If yes — rewrite.
5. Does the first third contain at least one specific proof point from `proof-points.md`? If no — add one or defer consciously.
6. Would a skeptical CTO or revenue lead reading this think "these people understand my business"? If no — cut the generic parts.
7. Am I burning a trope by using it in an asset that doesn't earn it? If yes — pick a different anchor.
8. Have I used ONLY "publishers" as the audience noun when the audience actually includes web apps, games, SaaS, or newsletters? If yes — expand the language (or use "independent web businesses").
9. Is the category framing "ad network" or "plugin" anywhere? If yes — rewrite to **revenue infrastructure / operating layer / infrastructure layer / strategic technology partner**.
10. Am I hedging? ("may," "could," "potentially," "helps to," "allows you to") Where? If a hedge isn't protecting a real legal/factual position, cut it. Ezoic has earned the authority — state the thing.
