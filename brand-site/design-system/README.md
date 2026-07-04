# Ezoic Brand Design System — Next.js + shadcn/ui port

Distilled from the Ezoic Brand Style Guide (experimental v0.1 — Vol. 02 / 2026, light
edition) via its web edition, `brand-site/index.html` — the canonical reference
implementation in this repo. This folder is the visual-token layer the brand-site
README already promises: _"lift the tokens ... into components there."_ It is
**tokens and CSS only** — no page components, no copy.

Source of truth stays `brand-site/index.html` plus the live catalog at
iheartezoic.com. If anything here ever disagrees with those, they win — re-run
the distillation rather than trusting this folder blindly.

## What's in here

| File                 | Purpose                                                                                                                 |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `styles.css`         | The theme — `@theme inline` tokens for shadcn, base layer, brand utility classes.                                       |
| `fonts.css`          | Self-hosted `@font-face` rules (Inter Display/Text, Reddit Mono). Imported by `styles.css`.                             |
| `fonts.ts`           | Optional `next/font/local` alternative to `fonts.css` — read the caveat in the file before using it.                    |
| `components.json`    | shadcn CLI config — `new-york` style, `neutral` base, CSS variables on.                                                 |
| `tailwind.config.ts` | Tailwind v3 fallback. Skip this if the target app is on Tailwind v4 — CSS-first config in `styles.css` is enough.       |
| `tokens.json`        | Machine-readable export of every token below, for design tools / docs / handoff.                                        |
| `brand-emblem.tsx`   | The approved emblem mark as a React component (exact path from `/brand/emblem-white.svg`), recolors via `currentColor`. |

## Install into the real Next.js app

1. Copy `styles.css` → `app/styles.css` (wherever `app/layout.tsx` imports global CSS from).
2. Copy `fonts.css` next to it, and copy the `.woff2` files from
   `brand-site/assets/fonts/` into the app's `public/fonts/`.
   (Prefer `next/font/local`? Use `fonts.ts` instead — read its top comment first,
   there's a real gotcha with referencing next/font variables inside `@theme inline`.)
3. Copy `components.json` to the app root, adjusting the `tailwind.css` path if
   `styles.css` ends up somewhere other than `app/styles.css`.
4. If the app doesn't have shadcn set up yet: `npx shadcn@latest init -d`, then
   re-apply this `components.json` (init will otherwise overwrite it with defaults).
5. Copy `brand-emblem.tsx` into `components/brand-emblem.tsx` (or wherever
   `aliases.components` in `components.json` points).
6. `npx shadcn@latest add button badge table sheet separator tooltip sonner` (or
   whichever primitives the page needs), then apply the recipes below.

## Brand constraints (do not regress these)

1. **Five declared values** — Green `#70A92A`, Charcoal `#252726`, Graphite
   `#575757`, Steel `#969696`, Cloud `#E3E3E3`. No other hue. White `#FFFFFF` and
   alpha/`color-mix()` derivatives of the five are permitted only as quiet surface
   tints (raised panels, washes) — see the two flagged exceptions
   (`--color-destructive`, `--color-chart-5`) in `styles.css`, both pending
   brand sign-off.
2. **No all-caps.** Nothing is set in all caps — hierarchy comes from scale and
   spacing, not caps, not bold runs. Headings are Title Case, closed with a period;
   body is sentence case.
3. **Mono is for code only** — Reddit Mono never appears as a heading, label, or
   decorative face. Real code/file-paths/hex/exact-values only.
4. **Type spec**: headings — letter spacing `-5%` (`-.05em`), line spacing 125%.
   Body — letter spacing `-3%` (`-.03em`), line spacing 150%. Oversized display
   specimens mirroring the guide's own pages may sit tighter (`.brand-display`).
5. **Light, always.** Surfaces are cloud or ink. There is no approved dark theme.
   Ink surfaces (back cover, full-bleed bands) are local accents inside the light
   system — use the `.brand-surface-ink` utility, not a `.dark` class.
6. **Green is the single accent.** The mark, primary actions, signature moments —
   it earns every appearance. Never small text on light surfaces (2.8:1 — fails
   WCAG AA) and never wired to generic hover/menu-accent states — that's why
   `--color-accent` is neutral, not green.
7. **The wordmark is never typeset.** It is a file, placed. Never rebuild the Ezoic
   logo, lockup, or wordmark in CSS/HTML text — always use the approved files
   (`lockup-dark.png` / `lockup-light.png`) via `next/image`. `brand-emblem.tsx` is
   the one safe exception: it's the standalone mark only, using the exact approved
   vector path.
8. **Soft-rounded surfaces.** Per the guide's pages: `16px` panels/tiles/swatches,
   `24px` large bands, `999px` pills. Never stock `rounded-md` "SaaS card" chrome,
   and never a new radius outside these three.
9. **The Pixel Wash** is the system's one texture: neutrals only, one wash per
   surface, always under the content — editorial collage at 14% on hero surfaces,
   ink-band washes at 8% / 10%. Use the `.brand-wash*` utilities; a wash never
   carries color, never crowds the mark, and never substitutes for hierarchy.
10. **Four logo pairings, then leave it alone** — Core on cloud (default) · Steel
    on cloud (quiet) · Reversed on ink · Steel on ink (quiet reverse).

## Token → shadcn mapping

| shadcn token                         | Maps to                                          | Notes                                                              |
| ------------------------------------ | ------------------------------------------------ | ------------------------------------------------------------------ |
| `background` / `foreground`          | Cloud / Charcoal                                 | The page surface and primary text                                  |
| `card` / `popover`                   | White panel tint / Charcoal                      | Raised panels are a cloud tint, not a new hue                      |
| `primary` / `primary-foreground`     | Green / Paper                                    | The one accent; buttons are bold (700) weight                      |
| `secondary` / `secondary-foreground` | Steel / Charcoal                                 | Lower-emphasis filled actions                                      |
| `muted` / `muted-foreground`         | Paper+Charcoal mix / Graphite                    | Quiet panel fills, de-emphasized text                              |
| `accent` / `accent-foreground`       | Paper+Charcoal mix / Charcoal                    | **Deliberately neutral** — not green. See constraint 6.            |
| `destructive`                        | Non-brand placeholder                            | **Flagged — get brand sign-off before using.**                     |
| `border` / `input`                   | Charcoal hairline / Charcoal hairline (stronger) | Matches the source's `--hair` token exactly                        |
| `ring`                               | Green                                            | Focus rings are a primary-action affordance — green earns this one |
| `sidebar-*`                          | Ink / Paper / Green                              | Mirrors the existing dark-band pattern (footer, `.dlcta`) 1:1      |
| `chart-1..5`                         | Green, then 4 neutrals                           | One highlighted series in green, never multiple saturated colors   |

## Brand component recipes

Until the relevant shadcn primitives are installed and restyled, the utility
classes in `styles.css` under `@layer components` give pixel-accurate brand
fidelity for the bespoke bits that don't map to a stock shadcn component:

- `.brand-pill` — the primary CTA (green fill, full radius, weight 700, hover→ink)
- `.brand-ghost` — secondary action on dark surfaces (outline, paper text)
- `.brand-tlink` — underlined text link with the gap-expand hover
- `.brand-eyebrow` / `.brand-kicker` — small label type (sentence case, never caps)
- `.brand-surface-ink` — the dark-band surface (footer, full-bleed sections)
- `.brand-display` — large display type (900 weight, -5% tracking, tight leading)

When you do restyle `components/ui/button.tsx`, the `default` variant should
match `.brand-pill` exactly — `h-[2.875rem]`, `rounded-full`, `font-bold`,
`bg-primary text-primary-foreground hover:bg-foreground` — rather than the
stock shadcn `rounded-md` default. Panels and cards take the 16px panel
radius (constraint 8); because `--radius` is set to `1rem`, shadcn-generated
components inherit the panel look automatically, with `rounded-xl` reserved
for the 24px band radius.

## Known gaps — ask the brand owner, don't invent answers

- No approved destructive/error color.
- No approved dark mode.
- No approved chart/dataviz palette (the one here is a safe derivation, not a standard).
- Draft asset sheets under `brand-site/assets/brand/truth-assets/` carry superseded
  values (ink `#222423`; heading/body line spacing 105%/110%). The guide PDF's written
  spec (`#252726`; 125%/150%) is the contract — don't re-derive tokens from the sheets.
