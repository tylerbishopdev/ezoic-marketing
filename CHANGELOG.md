# Changelog

All notable changes to the `ezoic-marketing` skill and its plugin packaging.

## [2.1.0] — 2026-07-04

Full realignment to the ratified visual system: the Ezoic Brand Style Guide, experimental v0.1 (Brand standards / Vol. 02 — 2026 / Light edition).

### Changed
- **`brand-site/index.html` rebuilt as the web edition of the guide** — the home page now mirrors the PDF sheet for sheet (Cover → Growth Engineering contents → Logo → Logo On Color → Logo Usage → Color → Font → Type In Use → The Pixel Wash → Voice → Applied Examples → back cover), with the guide's page chrome, headlines, rules, captions, and master files (core/reversed lockups, steel pairing masters, wash assets).
- **Design system aligned to the written spec** (`brand-site/design-system/`): body tracking −3% (was −2%), heading/body line spacing 125%/150%, heading convention Title Case closed with a period, soft-rounded surface scale (16px panels / 24px bands / 999px pills) per the guide's pages, pixel-wash tokens and utilities (collage 14%, ink bands 8%/10%), cloud page surface with white raised-panel tints.
- **`references/ezoic-style-design-bible.md` rewritten as the Vol. 02 light-edition bible** — palette (Green #70A92A single accent · Charcoal · Graphite · Steel · Cloud), four logo pairings, Inter/Reddit Mono spec, the Pixel Wash, sheet-based layout rhythm, updated component rules and banned patterns. The mint-led dark system (mint/lime/frog, near-black surfaces, grain-over-mint, Red Hat Mono) is fully retired.
- **Visual contract updated** — `resolver.md` rules 13/16/20 and their `SKILL.md` summaries now carry the light-edition palette, the guide's type spec, and the pixel-wash rule (no sanctioned gradient). Pitch-deck visual calibration in `channel-playbook.md` and the capitalization note in `brand-voice.md` updated to match. Both READMEs realigned.
- Conflict resolution documented everywhere it matters: the guide's written spec wins over draft asset sheets (ink `#252726`, not `#222423`; line spacing 125%/150%, not 105%/110%).

### Added
- Machine-readable surfaces regenerated from the new system, ready to lift into the canonical app and the `ezoic-brand` MCP server: `brand-site/llms.txt`, `brand-site/llms-full.txt`, `brand-site/api/ezoic-brand.json`.
- **Machine surfaces rebuilt as creation tools** for the "generate brand-perfect materials via API/MCP" use case: a 5-step usage workflow (API endpoints + MCP tool patterns), copy-paste design tokens, component recipes (pill/ghost/tag/panel/ink band/ruled rows/sheet chrome/proof slot), per-material playbooks (landing page, deck slide, social image, one-pager, case study, email, ad), a green accent budget, copy guardrails, a 10-item pre-ship checklist, and a complete status-keyed asset catalog (master / current / draft / duplicate / retired) with real dimensions, byte sizes, and MIME types — including the flag that the three overlay washes are JPEG data behind `.png` extensions.
- **Dark mode explicitly eliminated** (the guide's "Light, always" made binding beyond doubt): stated in the site's Color discipline, the bible, resolver rule 13, the SKILL summary, tokens, theme CSS, and all three machine surfaces — moved out of "known gaps"; ink surfaces are local accents, never a theme, and no `.dark` variant may be built.
- **Asset manifest for the v0.1 masters** in `api/ezoic-brand.json → sections.access` (repo paths + live paths, wash opacities, roles) with a status note: the repo files are the authoritative masters until the live catalog is refreshed. Mint-era finishes (`emblem-mint` / `mark-mint` / `mark-lime` / `mark-frog`) and the superseded draft sheets are cataloged as retired/reference-only.
- `BRAND-REALIGNMENT-PROMPT.md` — the reusable master prompt that produced this realignment; re-run it when the guide PDF is revised.
- **Aligned to the live canonical source (2026-07-06):** iheartezoic.com now serves the v0.1 system (deployed from `ezoic-brand-design-library` on 2026-07-04), so every "live catalog still serves the previous set" note is replaced with the ALIGNED status; the asset manifest carries the real live paths (`/brand/lockup-steel-cloud.png`, `/brand/lockup-steel-ink.png`, the pixel-wash set, `/fonts/RedditMono-VF.woff2`); and the Applied Examples sheet is deferred to mirror the live guide — the draft example frames (Frame 120905/120906) are downgraded to pending re-audit and removed as playbook models.

## [2.0.0] — 2026-07-01

Full overhaul: re-converted to a native Claude Code skill and re-verified against live sources.

### Changed
- **Consolidated skill rewritten Claude-native (v2.0)** from the interim external-runtime port (`1.1-pplx`): 13 task playbooks (including advertiser marketing / bidsystem.ai), a 3-tier source resolver with the `ezoic-brand` MCP server as Tier 1, and the binding brand-enforcement contract (rules 1–20, including the deprecated-name deny list).
- **Frontmatter description rewritten trigger-first** — task and product-name triggers up front, mechanism out; ends with the cross-skill boundary: Open.Video-only work where Ezoic is not the frame routes to `openvideo-marketing`.
- **Consultative/expertise register extended to all primary 250K+ segments** (web apps, games, SaaS, newsletters, content publishers) in `audience-segments.md`, `positioning-pillars.md`, and `product-catalog.md`: dedicated account specialist, personalized revenue strategy sessions, and custom first-party data / ad ops planning (Business tier) are now part of the default pitch. "JS snippet. Live in minutes." remains a supporting friction-killer, never the lead of strategic copy.
- **References re-verified against live primary sources** with as-of dates (2026-07-01): payment terms sourced to the ToS, the free-core commitment to the live FAQ's full wording, scale claims to the live ezoic.com homepage; unverifiable figures removed rather than kept.

### Added
- Restored plugin packaging (`.claude-plugin/plugin.json` + `marketplace.json`) that the 2026-06-18 consolidation (`fc996bc`) removed — updated for the single consolidated skill (no return to the old 10-skill split).
- `scripts/publish.sh` — deprecated-name grep gate, YAML/JSON verification, version bump, and packaging of `skills/ezoic-marketing/` from the root source. References are the single source of truth; everything else is build output.
- This changelog.

## [1.1-pplx] — 2026-06

Interim conversion of the consolidated skill for an external runtime (Perplexity). Superseded by 2.0.0.

## [1.0.0] — 2026-05-21

Initial release as a Claude Code plugin (`1980c52`): 10 skills, `.claude-plugin/` scaffolding, brand MCP integration. Consolidated into a single root skill on 2026-06-18 (`fc996bc`).
