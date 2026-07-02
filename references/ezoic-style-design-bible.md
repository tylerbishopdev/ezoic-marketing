# Ezoic Style & Design Bible

Version: Vol. 01 / 2026  
Canonical public source: `https://iheartezoic.com`

This is the canonical public style guide for the Ezoic brand design library. The site, API, MCP endpoint, `llms.txt`, and `llms-full.txt` are different access surfaces for this same system.

## Source Hierarchy

1. Visual/style truth: `app/page.tsx`, `components/brand-guide/*`, `app/globals.css`, `app/layout.tsx`, and public assets used or exposed by the app.
2. Asset truth: files returned by `/api/ezoic-brand/assets` from `public/brand`, `public/images/design-elements`, `public/photo-backs`, and `public/fonts` at request time.
3. Font implementation truth: public font files in `public/fonts` and package-provided `@fontsource/inter` and `@fontsource/red-hat-mono`.
4. Content integrity truth: claim, metric, partner, quote, and customer-specific details live under Content Integrity / Source Notes as support metadata.

Localhost is only a preview surface. `https://iheartezoic.com` is the public production surface.

## Brand Foundation

Ezoic is positioned as revenue infrastructure for the modern web and the operating layer for independent web businesses.

The design system is editorial, high-contrast, photo-led, restrained, and technical. Near-black and off-white carry the experience. Mint appears as a decisive accent, not decoration.

## Voice

The three public voice constants are:

- Direct: say what you mean. No marketing fog. No hedging that hides a weak claim.
- Confident: state verified things plainly. Confidence is about truth, not volume.
- Technical: frame Ezoic as revenue infrastructure and an operating layer, not as a generic vendor, ad network, or plugin.

Use normal sentence case or title case for external copy. The all-lowercase voice page treatment is a typesetting choice, not a general writing rule.

Terminology captured in this repo:

- Ezoic: never `EZOIC` or lowercase `ezoic` outside logo/domain contexts.
- ezID: lowercase `ez`, capital `ID`.
- EPMV: all caps; explain Earnings Per Thousand Visitors on first use for non-publisher audiences.
- JS snippet: preferred wording for the lightweight integration.
- Open.Video: the period is part of the name.

## Logo And Assets

Use approved files from the public asset catalog. Do not redraw, recolor, stretch, retype, add effects to, or approximate the logo.

- Default lockup: horizontal lockup, badge left and wordmark right.
- Dark surface: `/brand/lockup-light.png` on near-black.
- Light surface: `/brand/lockup-dark.png` on off-white.
- Clear space: keep at least the badge height, labeled as `x`, on every side of the primary lockup.
- ezID: use the approved ezID sub-brand lockup only where that product is actually represented; use the `ezID` wordmark spelling in body copy.

Supported public asset roots:

- `public/brand` served at `/brand`
- `public/images/design-elements` served at `/images/design-elements`
- `public/photo-backs` served at `/photo-backs`
- `public/fonts` served at `/fonts`

Use `/api/ezoic-brand/assets`, `/api/ezoic-brand/assets/grouped`, and `/api/ezoic-brand/assets/download?root=...` for current records, grouped counts, dimensions, MIME types, direct URLs, and ZIP downloads.

## Color System

| Name | Hex | Role |
| --- | --- | --- |
| Mint | `#BBFFA6` | Single accent; hero moments, CTAs, focal marks, chart highlights, selection, signature moments |
| Lime | `#A2D860` | Reserved support color paired with Mint |
| Frog | `#3D5C17` | Light-only contrast paired with Mint |
| Near-black | `#0B0C0B` | Primary page and brand surface |
| Muted | `#484848` | Dark neutral support |
| Muted-Inverse | `#979797` | Secondary text, metadata, borders, chart labels |
| Off-white | `#F5F9F1` | Primary ink on dark and quiet light background |
| Surface 1 | `#121312` | Subtle lifted dark panel surface |
| Surface 2 | `#181918` | Nested or hover dark surface |
| Destructive | `#E5484D` | Destructive UI token only |

Near-black and off-white carry the system. Mint is the single accent and should do real work. Lime and Frog support Mint; they do not replace it. Do not introduce new brand hues for surfaces, charts, or components.

Signature surface: `Grain over Mint`, defined by `.grain-mint`, combines `linear-gradient(180deg, #A2D860 5%, #BBFFA6 50%, #3D5C17 100%)` with a subtle grain overlay. Use only for singular brand moments such as hero shapes, section anchors, and ad creative — never as decorative edge strips or wallpaper.

## Typography And Red Hat Mono

Primary type is Inter. Red Hat Mono is the required Ezoic brand mono face for technical, code, file-path, hex, and exact-value use.

- Display: Inter 28pt via `--font-inter-display`; `.font-display` uses tight `-0.05em` tracking.
- Body/UI: Inter 18pt via `--font-inter`; body defaults to medium weight and tight tracking.
- Weights: `@fontsource/inter` imports 300, 400, 500, 600, 700, and 900; public WOFF2 files cover Light through Bold at 18pt and SemiBold through Black at 28pt.
- Section headings: large editorial scale, tight leading, standalone titles.
- Mono: Red Hat Mono via `--font-mono` and `--font-red-hat-mono`; public file `/fonts/RedHatMono.woff2`.

Mono is not decoration. Use it only for code blocks, setup snippets, copy/paste boxes, hex values, exact technical values, and code-like data labels. Do not use mono for general headings, body copy, corner labels, or brand texture.

## Photography And Atmosphere

The current public site uses real photo backdrops as full-bleed atmospheric surfaces with near-black overlays and restrained green treatment.

- Use `/photo-backs/combo-people.png` and `/photo-backs/Frame 120886.png` as guide references for dark veil, restrained Lime-to-Mint-to-Frog overlay, and content-dominant composition.
- Use the source photo treatment when a page needs brand atmosphere.
- Use filenames as locators; do not treat them as customer, scenario, or proof labels.
- If no approved product or customer image exists for a specific story, use a quiet editorial surface with an open media slot.

## Layout, Surfaces, And Motion

The brand guide uses an editorial rhythm:

- Max content width: `1400px`.
- Common horizontal padding: `px-6 sm:px-8 lg:px-14`.
- Common major-section padding: `py-28 sm:py-36 lg:py-44`.
- Composition: asymmetric, large type, sparse rows, full-bleed pairings, and enough negative space for the system to breathe.

Surfaces stay quiet: Near-black is the default field, Off-white interrupts as an editorial light section, Surface 1 and Surface 2 are subtle near-black lifts, and hairlines use Muted-Inverse at low opacity.

Motion is quiet entrance motion: opacity plus a slight vertical rise. Hover motion is minimal: color change, line extension, arrow reveal, or button state.

## UI Component Rules

- Primary action: rounded Mint pill with near-black text.
- Secondary action: rounded muted outline on dark.
- Text link: low-chrome underlined or line-cued action.
- Badge: small rounded pill using Mint or muted outline/fill.
- Input field: near-black field with muted border and muted value text.
- Section header: standalone display heading with no required pre-label.
- Data visualization: Mint is the active/highlight value; Muted-Inverse supports structure and labels.

## Case Studies And Collateral

Case studies and collateral should consume the design system without copying the homepage blindly.

- Use one dominant idea per section.
- Build the story as situation, operating change, source-ready proof slot, quote slot, and next action.
- Use a prominent Mint-led proof slot for sourced metrics.
- Leave metric, quote, and customer-detail slots open until the content is available.
- Prefer rows, editorial type, sparse proof treatments, and photo-led atmosphere when an approved photo asset exists.
- Use mono only for technical values, file paths, commands, or copy boxes.

For pages, slides, one-pagers, and marketing docs: start from the editorial rhythm, palette, typography, surfaces, motion, asset catalog, and Content Integrity / Source Notes. Do not use generic SaaS card grids as the default structure.

## Banned Patterns

- Fake logos, fake lockups, or unapproved logo stand-ins presented as real.
- Asset meaning inferred from filenames alone.
- Unsourced metrics, proof points, product claims, partner claims, workflow claims, customer names, or quotes.
- Decorative monospace or mono-heavy layouts.
- All-caps label systems, all-caps headings, or all-caps eyebrows outside narrow technical exceptions.
- Grid-pattern filler as brand atmosphere.
- Standalone gradient blur blob backgrounds.
- Generic SaaS card grids.
- Heavy cards and white-on-dark fake cards.
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

These surfaces use the same section IDs, asset roots, typography rules, Red Hat Mono treatment, banned patterns, generation guidance, and Content Integrity / Source Notes.

## Content Integrity / Source Notes

Content Integrity / Source Notes is supporting metadata for agents, docs, APIs, and LLM ingestion. It protects factual claims while keeping the creative guidance focused on Ezoic design outcomes.

Principles:

- Use the live asset catalog before placing logos, marks, design elements, photo backdrops, or font files.
- Use filenames as locators, not as proof of what an asset depicts or means.
- Leave claim slots empty or clearly open when a metric, customer name, partner name, quote, product fact, or outcome is not available.
- Do not invent metrics, customers, outcomes, screenshots, quotes, partners, product capabilities, or asset meanings.
- Keep integrity notes in this support area; do not present them as the headline design philosophy.

Claim slot guidance:

- Metrics slots may be designed as prominent Mint-led proof moments, but the value area stays empty until a cited value is available.
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
- Customer-specific proof, metrics, quotes, and attribution for the example case study.
- External claim sources for product, partner, customer, and metric statements.
- Any asset meaning not explicitly mapped by guide text or asset metadata.

