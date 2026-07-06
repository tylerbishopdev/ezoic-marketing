# Ezoic Brand Standards — Site (light edition)

The web edition of the **Ezoic Brand Style Guide — experimental v0.1** (Brand standards /
Vol. 02 — 2026 / Light edition). Single self-contained file (`index.html`, CSS + JS inline)
— open it in any browser, no build step. The guide PDF is the ratified spec; this page
mirrors it sheet for sheet.

```
open brand-site/index.html        # macOS
xdg-open brand-site/index.html    # Linux
```

## Structure — the guide's running order

Each section is a "sheet" reproducing a page of the guide, with its page chrome (running
head, emblem top right, hairline footer with a mono page number):

| Sheet | Page | Headline |
| --- | --- | --- |
| Cover | 01 | — (the lockup over the cover wash) |
| Contents | 02 | Growth Engineering. |
| Logo | 03 | Primary + reversed lockups, with file paths |
| Logo On Color | 04 | Four pairings, then leave it alone |
| Logo Usage | 05 | Use The Master Files. |
| Color | 06 | Neutrals Build. Green Points. |
| Font | 07 | Inter |
| Type In Use | 08 | One Family. Two Optical Sizes. |
| The Pixel Wash | 09 | Decisive, Concise, Clear. |
| Voice | 10 | Direct. Confident. Technical. |
| Back cover | — | Reversed lockup + tagline + machine-readable access |

The guide PDF's Applied Examples page is deferred — the draft example frames are pending re-audit and were removed from the live guide and this mirror.

## The system

**Palette — five declared values.** Ezoic Green `#70A92A` (the single accent — the mark,
primary actions, signature moments) · Charcoal `#252726` · Graphite `#575757` · Steel
`#969696` · Cloud `#E3E3E3`. Surfaces are cloud or ink; white `#FFFFFF` and alpha
derivatives of the five appear only as quiet surface tints (raised panels, washes). An
automated color audit of the file confirms nothing else appears. Green measures 2.8:1 on
light surfaces, so it is never small text on cloud/white. Dark mode is eliminated — ink
panels are local accents, never a theme.

**Type.** Inter, one family, two optical sizes — self-hosted (28pt Display for headings,
18pt Text for body), plus Reddit Mono (variable) for code, file paths, hex, and exact
values only. Headings: −5% letter spacing, 125% line spacing, Title Case, closed with a
period. Body: −3% letter spacing, 150% line spacing, sentence case. Nothing is set in all
caps (`text-transform: uppercase` count: 0). Oversized specimen headlines mirroring the
guide's own pages sit tighter than the 125% heading standard (`.disp`).

**The Pixel Wash.** The system's one texture — neutrals only, one wash per surface, always
under the content: editorial collage at 14% (hero surfaces), Wash 01 at 8% and Wash 02 at
10% (ink bands). The wash assets live in `assets/overlays/` and
`assets/brand/truth-assets/`.

**Logo integrity.** The wordmark is never typeset — every lockup is an approved file:
`lockup-dark.png` (core, on light), `lockup-light.png` (reversed, on ink), and the steel
pairing masters in `assets/brand/truth-assets/UPDATE/`. The emblem renders as inline SVG
using the exact approved vector path from `/brand/emblem-white.svg`, recolored only within
the palette finishes (green / ink / steel / green-on-ink).

## Machine-readable surfaces

Reference copies generated from the same system, ready to lift into the canonical
Next.js app and the `ezoic-brand` MCP server:

- `llms.txt` — compact index (mirrors `iheartezoic.com/llms.txt`)
- `llms-full.txt` — the full guide as markdown (mirrors `/llms-full.txt`)
- `api/ezoic-brand.json` — the structured guide payload (mirrors `/api/ezoic-brand`)

## Conflict notes

- Draft asset sheets under `assets/brand/truth-assets/` carry superseded values (ink
  `#222423`; heading/body line spacing 105%/110%). The guide PDF's written spec — ink
  `#252726`, line spacing 125%/150% — is the contract everywhere in this repo.
- ALIGNED: the live catalog at iheartezoic.com serves the v0.1 set (deployed
  2026-07-04) and is the authoritative source. This repo mirrors the masters under
  `assets/` for offline reference (manifest: `api/ezoic-brand.json →
  sections.access.catalog`).
- Mint-era finishes still mirrored in `assets/brand/` (`emblem-mint.png`,
  `mark-mint.png`, `mark-lime.png`, `mark-frog.png`) are retired — never place them.

## Porting to production

The canonical site (`iheartezoic.com`) is a separate Next.js + Tailwind app. Lift
`design-system/` (tokens, theme CSS, fonts) and this page's sheet structure into
components there, and serve the three machine-readable files from the app's public
routes. `references/ezoic-style-design-bible.md` is the matching rules layer for the
marketing skill.
