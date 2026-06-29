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
| Accent | Mint `#BBFFA6` | **Ezoic Green `#74B43C`** (classic green) |
| Feel | Editorial, high-contrast | Editorial, high-contrast, **premium / trendy** |

The editorial DNA is kept — restrained, high-contrast, one decisive accent, generous negative
space, mono only for technical values. The system just moves to light surfaces and the classic
Ezoic green from the attached asset set.

## Palette (grounded, not invented)

The green family is traceable to the real public asset catalog rather than guessed:

- **Ezoic Green `#74B43C`** — primary accent. The vivid green from the attached assets; it sits at
  the midpoint of the two sampled greens below.
- **Forest `#578A19`** — sampled from `/brand/emblem-green.png`.
- **Lime `#A2D860`** — sampled from `/brand/mark-lime.png`.
- Neutrals anchor to official tokens: ink ← near-black `#0B0C0B`, silver ← muted-inverse `#979797`,
  paper ← off-white `#F5F9F1`.

## Assets

- The emblem is rendered as **inline SVG** (vector path from `/brand/emblem-white.svg`), recolored
  via `currentColor`, so it stays crisp at any size in any brand color.
- Wordmark / lockup / alt-logo / ezID specimens use the approved PNGs in `assets/brand/`, mirrored
  from the canonical catalog at `iheartezoic.com`.
- Live download links point at the real endpoints
  (`/api/ezoic-brand/assets/download?root=all`). No fake or stand-in marks.

Fonts (Inter, Red Hat Mono) load from Google Fonts with a system fallback stack.

## Sections

Logo · Color · Typography · Voice · Usage (do/don't) · Assets — plus a sticky nav with
scroll-spy, click-to-copy color swatches, quiet scroll-reveal motion, and a mobile menu.

## Porting to production

The canonical site (`iheartezoic.com`) is a separate Next.js + Tailwind app. This page is a
self-contained reference for that redesign — lift the tokens (`:root` block), the inline emblem
symbol, and the section structure into components there. The skill's markdown design bible
(`references/ezoic-style-design-bible.md`) still describes the previous dark/mint system; reconcile
it separately if this light direction is adopted as canonical.
