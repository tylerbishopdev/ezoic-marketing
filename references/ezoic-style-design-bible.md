# Ezoic Style & Design Bible

Version: Vol. 02 / 2026 — Light edition (experimental v0.1)
Canonical public source: `https://iheartezoic.com`

This is the canonical public style guide for the Ezoic brand design library. The site, API, MCP endpoint, `llms.txt`, and `llms-full.txt` are different access surfaces for this same system. The ratified spec is the Ezoic Brand Style Guide (experimental v0.1 — "Brand standards / Vol. 02 — 2026 / Light edition"); the brand-standards page mirrors it page for page.

## Source Hierarchy

1. Visual/style truth: the v0.1 guide and its web edition (`brand-site/index.html` in this repo; `app/page.tsx`, `components/brand-guide/*`, `app/globals.css`, `app/layout.tsx` in the canonical app) and public assets used or exposed by the app.
2. Asset truth: files returned by `/api/ezoic-brand/assets` from `public/brand`, `public/images/design-elements`, `public/photo-backs`, and `public/fonts` at request time.
3. Font implementation truth: public font files in `public/fonts` — Inter Display (28pt optical) and Inter Text (18pt optical) static weights, plus the Reddit Mono variable font.
4. Content integrity truth: claim, metric, partner, quote, and customer-specific details live under Content Integrity / Source Notes as support metadata.

Localhost is only a preview surface. `https://iheartezoic.com` is the public production surface.

Where a draft asset sheet and the guide's written spec disagree, the written spec wins: ink is `#252726` (not the sheet's `#222423`), and heading/body line spacing is 125% / 150% (not the sheet's 105% / 110%).

## Brand Foundation

Ezoic is positioned as revenue infrastructure for the modern web and the operating layer for independent web businesses. The identity theme is "Growth Engineering."

The design system is light, editorial, and type-led. Neutrals build the page; green makes the point. **The previous mint-led dark system is retired. Light, always.**

## Voice

Direct. Confident. Technical.

- Direct: say what you mean. Cut the fog. If a claim is weak, sharpen it or drop it.
- Confident: state verified things plainly. Confidence is about truth, not volume.
- Technical: Ezoic is revenue infrastructure for the modern web — never a generic vendor, ad network, or plugin.

Headings are Title Case, closed with a period. Body is sentence case. Nothing is set in all caps.

Terminology captured in this repo:

- Ezoic: never `EZOIC` or lowercase `ezoic` outside logo/domain contexts.
- ezID: lowercase `ez`, capital `ID` — the identity sub-brand.
- EPMV: all caps; expand to "Earnings Per Thousand Visitors" on first use.
- JS snippet: preferred wording for the lightweight integration.
- Open.Video: the period is part of the name.

## Logo And Assets

Every mark is a master file — place the files as supplied; never re-draw, re-color, or re-type them. The wordmark is never typeset. It is a file, placed.

- Primary lockup: emblem left, wordmark right — `/brand/lockup-dark.png` on light surfaces.
- Reversed lockup: ink surfaces only — `/brand/lockup-light.png`.
- Four approved pairings, then leave it alone: Core on cloud (default) · Steel on cloud (quiet) · Reversed on ink · Steel on ink (quiet reverse).
- Emblem finishes: Green `#70A92A` · Ink `#252726` · Steel `#969696` · on ink, the green holds.
- Clear space: the emblem height, labelled `x`, on every side.
- Never recolor outside the palette, stretch, rotate, or add shadows.
- Never place the mark on busy imagery without an approved veil, or shrink it below legibility.
- ezID: use the approved ezID sub-brand lockup only where that product is actually represented; use the `ezID` wordmark spelling in body copy.

Supported public asset roots:

- `public/brand` served at `/brand`
- `public/images/design-elements` served at `/images/design-elements`
- `public/photo-backs` served at `/photo-backs`
- `public/fonts` served at `/fonts`

Use `/api/ezoic-brand/assets`, `/api/ezoic-brand/assets/grouped`, and `/api/ezoic-brand/assets/download?root=...` for current records, grouped counts, dimensions, MIME types, direct URLs, and ZIP downloads.

Asset status: ALIGNED — the live catalog at `iheartezoic.com` serves the v0.1 set (deployed 2026-07-04) and is the authoritative source: `/brand/lockup-steel-cloud.png`, `/brand/lockup-steel-ink.png`, the pixel-wash set under `/images/design-elements/`, cover washes under `/photo-backs/`, and `/fonts/RedditMono-VF.woff2`. This repo mirrors the masters under `brand-site/assets/` for offline reference (manifest in `brand-site/api/ezoic-brand.json → sections.access.catalog`). Mint-era finishes (`emblem-mint.png`, `mark-mint.png`, `mark-lime.png`, `mark-frog.png`) are retired — never place them.

## Color System

Neutrals build. Green points.

| Name | Hex | Role |
| --- | --- | --- |
| Ezoic Green | `#70A92A` | The single accent — the mark, primary actions, signature moments. It earns every appearance |
| Charcoal | `#252726` | Primary text; ink surfaces (full-bleed bands, reversed-logo panels, back cover) |
| Graphite | `#575757` | Secondary text, metadata, captions; the accessible stand-in for accent text on light surfaces |
| Steel | `#969696` | Muted: quiet logo pairings, borders, page numbers, secondary text on ink |
| Cloud | `#E3E3E3` | The page surface |

Discipline: surfaces are cloud or ink. Don't introduce new brand hues for surfaces, charts, or components. White `#FFFFFF` and alpha/`color-mix` derivatives of the five declared values are permitted only as quiet surface tints (raised panels, washes) — never as new hues. Green measures 2.8:1 on light surfaces, so it is never small text on cloud or white.

Dark mode is eliminated. There is no dark mode or dark theme — a decision, not a pending question (the guide's "Light, always" is binding). Ink surfaces (reversed-logo panels, full-bleed bands, the back cover) are local accents inside the light system, never a global theme. Do not build a `.dark` variant.

There is no sanctioned brand gradient. The retired mint-led system's "grain over mint" gradient is gone with it.

## Typography

One family, two optical sizes: Inter. Reddit Mono is the required Ezoic brand mono face.

- Headings: Inter Display (28pt optical), −5% letter spacing, 125% line spacing. Title Case, closed with a period.
- Body: Inter Text (18pt optical), −3% letter spacing, 150% line spacing, sentence case.
- Weights in use: Display 900 Black / 700 Bold / 600 SemiBold · Text 400 Regular · Mono Medium.
- Nothing is set in all caps. Hierarchy comes from scale and spacing — not caps, not bold runs.
- Mono: Reddit Mono (variable, 200–900) via `--font-mono`; public file `/fonts/RedditMono-VF.woff2`. Reserved for code, file paths, hex, and exact values. Never decoration — never a heading, label, corner-tag, or brand-texture face.
- Oversized display specimens that mirror the guide's own pages may sit tighter than the 125% heading standard; 125% remains the standard for headings in running layouts.

## The Pixel Wash

The system's one texture. Neutrals only, one wash per surface, always under the content.

- Editorial collage — hero surfaces · 14%.
- Wash 01 — ink bands · 8%.
- Wash 02 — ink bands · 10%.

A wash never carries color, never crowds the mark, and never substitutes for hierarchy. Photography inside a wash is light-washed and sits quiet under the system; if no approved image exists for a story, use a quiet editorial surface with an open media slot. Use filenames as locators; do not treat them as customer, scenario, or proof labels.

## Layout, Surfaces, And Motion

The brand guide uses an editorial, sheet-based rhythm — each section reads like a page of the guide:

- Max content width: `1320px`; gutter `clamp(20px, 5vw, 64px)`.
- Page chrome: a small running head top-left, the emblem top-right, a hairline footer with the section label left and a mono page number right.
- Composition: one dominant idea per sheet, oversized display headlines, ruled rows, generous negative space.
- Surfaces: cloud is the default field; white raised panels lift content; ink panels and bands are local accents, not a theme. Rounded surfaces per the guide's pages — 16px panels/tiles/swatches, 24px large bands, 999px pills.
- Hairlines: ink at low opacity (`rgb(37 39 38 / 0.13)`) on light; white at low opacity on ink.
- Motion is quiet entrance motion: opacity plus a slight vertical rise. Hover motion is minimal: color change, line extension, arrow reveal, or button state.

## UI Component Rules

- Primary action: rounded green pill with white text. Hover shifts to ink.
- Secondary action on ink: rounded outline ghost with cloud text.
- Text link: low-chrome underlined or line-cued action.
- Badge/tag: small rounded pill, hairline outline, sentence case (the guide's own "experimental · v0.1" tag is the model).
- Input field: white panel field with hairline border and graphite value text.
- Section header: standalone display heading, Title Case, closed with a period. No eyebrow required.
- Data visualization: green is the single highlighted series; charcoal, graphite, and steel carry structure and labels. Never multiple saturated colors.

## Case Studies And Collateral

Case studies and collateral consume the design system without copying the guide blindly.

- Use one dominant idea per section.
- Build the story as situation, operating change, source-ready proof slot, quote slot, and next action.
- Use a prominent green-led proof slot for sourced metrics — green earns the proof moment.
- Leave metric, quote, and customer-detail slots open until the content is available.
- Prefer ruled rows, editorial type, sparse proof treatments, and a single quiet wash when atmosphere is needed.
- Use mono only for technical values, file paths, commands, or copy boxes.

For pages, slides, one-pagers, and marketing docs: start from the sheet rhythm, palette, typography, washes, asset catalog, and Content Integrity / Source Notes. Do not use generic SaaS card grids as the default structure.

## Banned Patterns

- Fake logos, fake lockups, or unapproved logo stand-ins presented as real.
- A typeset wordmark — the wordmark is a file, placed.
- Asset meaning inferred from filenames alone.
- Unsourced metrics, proof points, product claims, partner claims, workflow claims, customer names, or quotes.
- Decorative monospace or mono-heavy layouts.
- All-caps label systems, all-caps headings, or all-caps eyebrows — nothing is set in all caps.
- Any color outside the five declared values (plus documented white/alpha surface tints) — including the retired mint/lime/frog set.
- Dark-led layouts or a global dark theme — ink is a local accent; light, always.
- Gradients — no sanctioned brand gradient exists in this system.
- More than one wash per surface, a wash over the mark, or a wash above its approved opacity.
- Grid-pattern filler as brand atmosphere.
- Standalone gradient blur blob backgrounds.
- Generic SaaS card grids and heavy drop-shadowed cards.
- Dashboard-like layouts when the use case is brand/collateral.
- Heavy bold everywhere.
- Invented iconography or illustration systems.
- Default chart palettes.
- Negative competitor-trashing.

## Machine-Readable Surfaces

The machine-readable guide exposes the same source through:

- `/api/ezoic-brand`
- `/api/ezoic-brand/sections/style`
- `/api/ezoic-brand/markdown`
- `/api/ezoic-brand/assets`
- `/api/ezoic-brand/assets/grouped`
- `/api/mcp`
- `/llms.txt`
- `/llms-full.txt`

These surfaces use the same section IDs, asset roots, typography rules, Reddit Mono treatment, pixel-wash rules, banned patterns, generation guidance, and Content Integrity / Source Notes. They are creation surfaces, not just documentation: the payload carries a usage workflow (load standards → resolve real assets → pick the material playbook → compose from tokens/components → run the pre-ship checklist), copy-paste design tokens, component recipes, per-material playbooks (landing page, deck slide, social image, one-pager, case study, email, ad), a status-keyed asset catalog (master / current / draft / duplicate / retired, with dimensions), and the 10-item pre-ship checklist. Reference copies generated from this bible live at `brand-site/llms.txt`, `brand-site/llms-full.txt`, and `brand-site/api/ezoic-brand.json` in this repo, ready to lift into the canonical app.

## Content Integrity / Source Notes

Content Integrity / Source Notes is supporting metadata for agents, docs, APIs, and LLM ingestion. It protects factual claims while keeping the creative guidance focused on Ezoic design outcomes.

Principles:

- Use the live asset catalog before placing logos, marks, design elements, photo backdrops, or font files.
- Use filenames as locators, not as proof of what an asset depicts or means.
- Leave claim slots empty or clearly open when a metric, customer name, partner name, quote, product fact, or outcome is not available.
- Do not invent metrics, customers, outcomes, screenshots, quotes, partners, product capabilities, or asset meanings.
- Keep integrity notes in this support area; do not present them as the headline design philosophy.

Claim slot guidance:

- Metrics slots may be designed as prominent green-led proof moments, but the value area stays empty until a cited value is available.
- Case-study templates should define the story structure first: situation, operating change, proof slot, quote slot, and next action.
- Marketing pages, docs, slides, and one-pagers may include labeled claim slots for later substantiation without weakening the visual system.
- When facts are unavailable, write direct structural copy around the missing claim instead of hedging or inventing.

Not specified in the current source set:

- Logo min sizes for print/web.
- CMYK and Pantone values.
- Co-branding rules.
- Formal iconography and illustration systems.
- Print layout system.
- Broadcast/video motion system.
- Full accessibility certification.
- An approved destructive/error color or chart palette (see the design-system "Known gaps"). Dark mode is not an open question — it is eliminated.
- Customer-specific proof, metrics, quotes, and attribution for the example case study.
- External claim sources for product, partner, customer, and metric statements.
- Any asset meaning not explicitly mapped by guide text or asset metadata.
