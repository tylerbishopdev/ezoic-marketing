# Prompt — Realign the Ezoic Brand Project to the v0.1 Light-Edition Style Guide

> The reusable master prompt for this transformation. Run it against this repo whenever the
> guide PDF is revised. It was executed to produce the current state of the repo.

---

You are rebuilding the Ezoic brand-standards project — the brand site, the design system,
the skill references, and the machine-readable surfaces (API payload, `llms.txt`,
`llms-full.txt`, MCP content) — so every surface aligns **perfectly** with the attached
**Ezoic Brand Style Guide — Experimental v0.1 (Brand standards / Vol. 02 — 2026 / Light
edition)**.

## 1. The source of truth

The PDF is the ratified system. Its canon:

**Identity.** Light, editorial, type-led. "Growth Engineering." Every mark is a master
file — place the files as supplied; never re-draw, re-color, or re-type them. Tagline:
*Revenue infrastructure for the modern web.*

**Logo.** Primary lockup = emblem left, wordmark right. Reversed lockup on ink surfaces
only. Exactly four approved pairings, then leave it alone: Core on cloud (default) ·
Steel on cloud (quiet) · Reversed on ink · Steel on ink (quiet reverse). Clear space =
emblem height (`x`) on every side. Emblem finishes: Green `#70A92A`, Ink `#252726`,
Steel `#969696`, and on ink the green holds. Never recolor outside the palette, stretch,
rotate, or add shadows. Never place the mark on busy imagery without an approved veil,
or shrink it below legibility. The wordmark is never typeset — it is a file, placed.

**Color.** "Neutrals Build. Green Points." Ezoic Green `#70A92A` is the single accent —
the mark, primary actions, signature moments; it earns every appearance. Neutrals:
Charcoal `#252726` · Graphite `#575757` · Steel `#969696` · Cloud `#E3E3E3`. Surfaces
are cloud or ink. No new brand hues for surfaces, charts, or components. **The previous
mint-led dark system is retired. Light, always.**

**Type.** One family, two optical sizes: Inter. Headings — Inter Display, −5% letter
spacing, 125% line spacing, Title Case, closed with a period. Body — Inter Text, −3%
letter spacing, 150% line spacing, sentence case. Weights in use: Display 900 / 700 /
600, Text 400, Mono Medium. Nothing is set in all caps — hierarchy comes from scale and
spacing, not caps, not bold runs. Reddit Mono is reserved for code, file paths, hex, and
exact values. Never decoration.

**The Pixel Wash.** The system's one texture: neutrals only, one wash per surface,
always under the content. Editorial collage on hero surfaces at 14%; Wash 01 on ink
bands at 8%; Wash 02 on ink bands at 10%. A wash never carries color, never crowds the
mark, and never substitutes for hierarchy.

**Voice.** Direct (say what you mean; cut the fog; if a claim is weak, sharpen it or
drop it) · Confident (state verified things plainly; confidence is about truth, not
volume) · Technical (Ezoic is revenue infrastructure for the modern web — never a
generic vendor, ad network, or plugin). Terminology: Ezoic (never EZOIC or lowercase
ezoic outside logo/domain contexts) · ezID · EPMV (all caps; expand "Earnings Per
Thousand Visitors" on first use) · JS snippet · Open.Video (the period is part of the
name).

## 2. Conflict resolution

- The PDF's **written spec wins** over draft asset sheets bundled in `truth-assets/`:
  ink is `#252726` (not the sheet's `#222423`); heading/body line spacing is **125% /
  150%** (not the sheet's 105% / 110%).
- The PDF's own display pages set mega headlines tighter than 125% — treat 125% as the
  heading standard and permit a tighter display exception only for oversized specimen
  headlines that mirror the guide's own pages.
- Anything mint (`#BBFFA6`), lime (`#A2D860`), frog (`#3D5C17`), near-black `#0B0C0B`
  surfaces as default, Red Hat Mono, or "grain over mint" gradient is the **retired**
  system: purge it from every instruction file and token.
- White `#FFFFFF` and alpha/`color-mix` derivatives of the five declared values are
  permitted only as quiet surface tints inside washes and raised panels (the guide's own
  pages use them); they are not brand hues.

## 3. Deliverables

1. **Home page = the guide.** Rebuild `brand-site/index.html` as the web edition of the
   PDF — same running order as its pages: Cover → Contents ("Growth Engineering.") →
   Logo → Logo On Color → Logo Usage ("Use The Master Files.") → Color ("Neutrals
   Build. Green Points.") → Font ("Inter") → Type In Use ("One Family. Two Optical
   Sizes.") → The Pixel Wash ("Decisive, Concise, Clear.") → Voice ("Direct. Confident.
   Technical.") → Applied Examples → Back cover. Reproduce the guide's page chrome
   (running head, emblem top right, hairline footer with page number in mono), its
   headlines verbatim, its rules verbatim, and its captions with real file paths in
   mono. Use only approved asset files already in `brand-site/assets/`; self-contained
   (inline CSS/JS, self-hosted fonts); WCAG AA for all text.
2. **Design system.** Update `brand-site/design-system/` (tokens.json, styles.css,
   tailwind.config.ts, fonts.*, README) to the PDF spec: tracking −5% headings / −3%
   body; line spacing 125% / 150%; the five declared values; the four logo pairings;
   pixel-wash tokens (14% hero / 8% and 10% ink bands); Title-Case-plus-period heading
   convention; no all-caps; mono discipline.
3. **References.** Rewrite `references/ezoic-style-design-bible.md` as the Vol. 02
   light-edition bible. Update the visual contract (rules 13–20) in
   `references/resolver.md` and its summary in `SKILL.md`; update the palette line in
   `references/channel-playbook.md`; update both READMEs. Purge every retired-system
   value outside explicitly-labeled "retired/previous system" context.
4. **Machine-readable surfaces.** Regenerate `brand-site/llms.txt`,
   `brand-site/llms-full.txt`, and `brand-site/api/ezoic-brand.json` from the new
   system — same section IDs as the live surfaces (`/api/ezoic-brand`, `/api/mcp`,
   `/llms.txt`, `/llms-full.txt`) so they can be lifted into the canonical Next.js app
   and the `ezoic-brand` MCP server unchanged.
5. **Gates & ship.** Add a CHANGELOG entry, bump the skill/plugin version, run
   `scripts/publish.sh check`, commit, push, open a draft PR.

## 4. Acceptance checks

- A color audit of `index.html` finds no hex/rgb outside the five declared values plus
  documented white/alpha surface tints.
- No `text-transform: uppercase` anywhere. Headings are Title Case and close with a
  period; body is sentence case.
- Mono appears only on code, file paths, hex, page numbers, and exact values.
- The wordmark is never typeset — every lockup/wordmark occurrence is an approved file.
- Washes are neutrals-only, one per surface, under content, at ≤14% (14 hero / 8 and 10
  ink) — never over the mark, never colored.
- Green appears only as the mark, primary actions, and signature moments — never as
  small text on light surfaces (2.8:1).
- `grep -ri 'mint\|BBFFA6\|A2D860\|3D5C17\|0B0C0B\|Red Hat'` returns nothing outside
  explicitly-labeled retired-system context.
- `scripts/publish.sh check` passes all gates.
