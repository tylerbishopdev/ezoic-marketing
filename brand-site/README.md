# Ezoic Brand Standards — Site (light edition)

A reworked, **modern, light-only, premium** brand-standards page for Ezoic. Single self-contained
file (`index.html`, CSS + JS inline) — open it in any browser, no build step.

```
open brand-site/index.html        # macOS
xdg-open brand-site/index.html    # Linux
```

## What changed

This is a redesign of the brand-standards surface in a new direction:

| | Previous canonical system | This redesign |
| --- | --- | --- |
| Mode | Dark-led (near-black field) | **Light only** — off-white & near-black carry it |
| Accent | Mint `#BBFFA6` | **Ezoic Green `#70A92A`** — one accent |
| Feel | Editorial, high-contrast | Editorial, high-contrast, **premium / trendy** |

The editorial DNA is kept — restrained, high-contrast, one decisive accent, generous negative
space, mono only for technical values. The system just moves to light surfaces and the classic
Ezoic green from the attached asset set.

## Palette — exclusive

The page uses **only** these six values. Exclusivity is enforced by an automated color audit that
scans every hex/rgba in the file — no other color appears.

| Name | Hex | Role |
| --- | --- | --- |
| Ezoic Green | `#70A92A` | The single accent — fills, the mark, primary actions |
| Charcoal | `#222423` | Primary text + dark surfaces |
| Graphite | `#575757` | Secondary text, metadata, hex values |
| Steel | `#969696` | Muted: borders, on-dark secondary, the muted mark |
| Cloud | `#E3E3E3` | Hairlines, panels, fills |
| White | `#FFFFFF` | Base surface |

Green `#70A92A` measures 2.8:1 on white, so — like any real system — it is reserved for fills, the
mark, and dark/large contexts and is never used as small text on white.

## Assets

- The emblem is rendered as **inline SVG** (vector path from `/brand/emblem-white.svg`), recolored
  via `currentColor`, so it stays crisp at any size in any brand color.
- Wordmark / lockup / alt-logo / ezID specimens use the approved PNGs in `assets/brand/`, mirrored
  from the canonical catalog at `iheartezoic.com`.
- Live download links point at the real endpoints
  (`/api/ezoic-brand/assets/download?root=all`). No fake or stand-in marks.

Typography is **self-hosted from the brand's own font files** (no webfont-CDN dependency): Inter with
optical sizing — **28pt Display** for headlines, **18pt Text** for body — and **Reddit Mono**
(variable, 200–900) for technical/mono, replacing Red Hat Mono per the attached direction.

## Logo integrity & accessibility

- **The wordmark is never typeset.** Per the brand surface-pairing rule, the header uses the real
  `lockup-dark.png` (lowercase `ezoic`) on the light surface and the footer uses `lockup-light.png`
  on near-black. No font-composed stand-ins.
- **The emblem only appears in palette colors** — green `#70A92A`, charcoal `#222423`, steel
  `#969696`, or reversed (white on charcoal).
- **All text meets WCAG AA**, verified by measured ratios (secondary text 7.2:1, on-dark 5.3–12:1,
  button text on green 5.5:1). Green and steel are kept off small-text-on-white, where they'd fail.

## Sections

Six numbered sections — Logo · Color · Typography · Voice · Usage · Assets — in a ruled, type-led
**brand-manual rhythm**: mono index numbers, hairline rules, two full-bleed near-black bands, a
contiguous neutral tone strip (not swatch cards), and a large type specimen. No SaaS card grids.
Sticky scroll-spy nav, click-to-copy color values, quiet scroll-reveal (with a no-JS fallback so
content is never hidden), and a mobile menu.

## Porting to production

The canonical site (`iheartezoic.com`) is a separate Next.js + Tailwind app. This page is a
self-contained reference for that redesign — lift the tokens (`:root` block), the inline emblem
symbol, and the section structure into components there. The skill's markdown design bible
(`references/ezoic-style-design-bible.md`) still describes the previous dark/mint system; reconcile
it separately if this light direction is adopted as canonical.
