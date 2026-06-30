import localFont from "next/font/local"

/**
 * OPTIONAL alternative to fonts.css. next/font/local self-hosts the same
 * files with automatic preloading and zero layout shift, but it generates
 * scoped/hashed font-family names — they can NOT be referenced by literal
 * name inside `@theme inline` in styles.css. Tailwind v4's `@theme inline`
 * inlines literal values into generated utilities; a runtime-injected,
 * next/font-generated variable isn't visible to that static resolution,
 * so `--font-sans: var(--font-inter-text)` inside `@theme inline` will
 * silently fail to load the font even though it looks correct.
 *
 * If you use this file instead of fonts.css:
 *   1. Apply `${interText.variable} ${interDisplay.variable} ${redditMono.variable}`
 *      as a className on <html> in app/layout.tsx.
 *   2. Reference the fonts directly via `var(--font-inter-text)` in
 *      component-level styles, not inside styles.css's `@theme inline`
 *      block — e.g. `className="font-[family-name:var(--font-inter-text)]"`.
 *   3. Delete the `@import "./fonts.css";` line from styles.css.
 *
 * Adjust the `path` values below if you place this file somewhere other
 * than one level inside the app directory — next/font/local resolves
 * `path` relative to this file's own location, not the project root.
 */
export const interText = localFont({
  src: [
    { path: "../public/fonts/Inter_18pt-Light.woff2", weight: "300", style: "normal" },
    { path: "../public/fonts/Inter_18pt-Regular.woff2", weight: "400", style: "normal" },
    { path: "../public/fonts/Inter_18pt-Medium.woff2", weight: "500", style: "normal" },
    { path: "../public/fonts/Inter_18pt-SemiBold.woff2", weight: "600", style: "normal" },
    { path: "../public/fonts/Inter_18pt-Bold.woff2", weight: "700", style: "normal" },
  ],
  variable: "--font-inter-text",
  display: "swap",
})

export const interDisplay = localFont({
  src: [
    { path: "../public/fonts/Inter_28pt-SemiBold.woff2", weight: "600", style: "normal" },
    { path: "../public/fonts/Inter_28pt-Bold.woff2", weight: "700", style: "normal" },
    { path: "../public/fonts/Inter_28pt-Black.woff2", weight: "900", style: "normal" },
  ],
  variable: "--font-inter-display",
  display: "swap",
})

export const redditMono = localFont({
  src: [{ path: "../public/fonts/RedditMono-VF.woff2", weight: "200 900", style: "normal" }],
  variable: "--font-reddit-mono",
  display: "swap",
})
