# Ezoic Channel Playbook

Per-channel specs for every major Ezoic marketing channel. Each section tells you: what this channel is for, who reads it, how it's structured, the voice calibration, and the output format the skill should produce.

Every routine in this skill consults this file when producing a channel-specific deliverable.

**For visual direction on every deliverable that will be seen (landing pages, social images, deck slides, ads, print):** always cross-reference `ezoic-style-design-bible.md` and the live asset catalog (`/api/ezoic-brand/assets`). Audiences see the brand before they read it — visual coherence is as load-bearing as copy.

**Audience noun reminder:** Ezoic's audience is web apps, games, SaaS, newsletters, and content publishers — not just "publishers." In upmarket channels, use the broader language. See `brand-voice.md → The audience noun`.

---

## Press Release

**Purpose:** Official company record of a positioning move, product launch, or strategic change. Gets picked up by trade press (AdExchanger, Digiday, Search Engine Land, Martech), syndicated, and archived as the canonical version of the news.

**Audience:** Trade journalists, industry analysts, enterprise prospects doing diligence, competitors, investors.

**Length:** 400–600 words.

**Structure:**
1. **Headline** — the news + a directional signal, not just the news. 250K example: *"Ezoic Raises Bar to 250K; JS Integration for Full Revenue Platform Surges in Popularity with Web Builders."* Two clauses — the announcement + the adjacent signal.
2. **Dateline** — `[CITY], [DATE]`
3. **Lead paragraph (¶1–2)** — the news in one paragraph, the "why" in the next. Open with Ezoic's position in the market + the news. Paragraph 2 is the strategic framing ("over the last couple years we've been building…").
4. **Attributed quote** — CEO or relevant executive. Should carry the strategic narrative, not repeat the news. 250K example:
   > "Over the last couple years, we've found ourselves working more closely with larger publishers, building custom solutions for complex web applications. The future web demands it. There's unprecedented opportunity for publishers with valuable audiences, but also unprecedented complexity — and less expertise available to help them capitalize on it."
5. **Supporting context** — 2–3 paragraphs with the proof points (EPMV numbers, identity infrastructure, JS snippet integration).
6. **Secondary announcement / program addition** — e.g., Incubator addendum in the 250K release.
7. **Re-entry or boundary policy** — if relevant.
8. **Boilerplate (###)** — About Ezoic one-liner + media contact.

**Voice calibration:**
- Formality: HIGH
- Energy: measured, confident, not hype
- Third-person for narrative; direct quotes for strategic framing
- EPMV explained on first use
- Google Certified Publishing Partner in boilerplate

**Anti-patterns:**
- Quotes that just repeat the headline ("We're excited to announce…" — delete)
- Stacks of adjectives without a number
- Coverage-bait (promising exclusivity/interviews in the release body — those go in pitches)

---

## Customer Email (to existing / grandfathered publishers)

**Purpose:** Direct communication to publishers on the platform about changes that affect or don't affect them. Retention-first.

**Audience:** Grandfathered or current publishers.

**Length:** 250–400 words.

**Structure:**
1. **Subject line** — tell them the conclusion up front. 250K example: *"Update on Ezoic publisher requirements (you're grandfathered)"*. The parenthetical reassurance is the whole point.
2. **Opening** — casual, direct, not corporate. "Wanted to give you a heads up on some changes we're making."
3. **The news** — one paragraph, specific, with the date.
4. **The reassurance** — "This doesn't affect you."
5. **Supporting bullets** — Why / What's changing / What this doesn't change / What to do if [X].
6. **Sub-pitch if relevant** — new feature or integration improvement worth mentioning.
7. **Close** — open to questions, human signature.

**Voice calibration:**
- Formality: MEDIUM
- Energy: calm, transparent, first-person ("we")
- Don't sound defensive. One clear statement of "you're grandfathered." Then context, not repetition.
- Re-entry policy should be *mentioned* not *harped on* — mention as a "heads up" phrase, not a threat.

**Anti-patterns:**
- "Important update from Ezoic!" subject lines — sounds like a platform announcement, not a note from a partner
- Leading with the change before the reassurance — causes panic
- Multiple CTAs — this is a reassurance note, not a sales touch

---

## LinkedIn Post (from Ezoic exec / founder)

**Purpose:** Opinion-forward placement of Ezoic's strategic direction in front of publishers, ad-tech operators, and the industry. The "thought leadership" channel.

**Audience:** Scale publisher prospects, industry peers, ex-customers (who will see it from their network), competitors, media.

**Length:** 150–300 words (under LinkedIn's "see more" fold is ideal for the opener).

**Structure:**
1. **Hook** — first line stands alone. Often a declaration or counter-intuitive statement. 250K example: *"The future web is more complex than it's ever been."*
2. **Short supporting paragraphs** — 2–4 lines each, separated by line breaks. One idea per paragraph. Build tension (opportunity vs. complexity).
3. **The pivot to Ezoic's focus** — "That's where we're focused at Ezoic." Don't bury it; don't lead with it either.
4. **Product / program detail** — one to two specifics ("250K+ monthly users," "Incubator — 20 spots a month").
5. **The signature move** — "More on our direction: [link]" or a closing reflection. Don't end with a CTA like "Sign up today."

**Voice calibration:**
- Formality: LOW-MEDIUM
- Energy: opinion-forward, first-person from the exec
- Short sentences. Line breaks between ideas. LinkedIn rewards scannability.
- Zero corporate adjectives.

**Three proven patterns** (from the 250K campaign):

| Pattern | When to use |
|---|---|
| **Complexity Angle** ("The future web is more complex than ever…") | Strategic narrative moments, positioning shifts |
| **Opportunity Focus** ("Publishers with real audiences are sitting on more opportunity than ever") | Aspirational openings, new-market framing |
| **Results-Led** ("Some data worth sharing: sites with identified traffic are seeing 15%+ higher EPMVs than anonymous…") | Case-study drops, win-back-adjacent, proof moments |

**Stat rule:** any stat used in these patterns must be copied from `proof-points.md` with its context string intact — never re-attribute a stat to a different cohort or drop its qualifier.

**Anti-patterns:**
- Starting with "I'm excited to announce…"
- Corporate quote voice (use first-person singular; the exec is a person, not a press office)
- Hashtag stuffing — 1–3 at most, topical, not decorative
- Long lead-ins before the point

---

## Sales Deck Slide

**Purpose:** Single slide in a longer sales deck. Usually self-contained enough to be pulled as a standalone visual.

**Audience:** Scale publisher prospect, Enterprise / Custom Solutions prospect.

**Structure:**
1. **Slide title** — concrete and short (5–7 words). "Built for Publishers at Scale."
2. **Main copy** — 1–2 sentences, the core claim of this slide.
3. **Supporting stats** — 2–3 numerical proof points (EPMV, data points, lift %).
4. **Visual suggestion** — described in the brief, not embedded. Simple graphics > busy diagrams. **Never a small-to-big funnel.**
5. **Positioning note** (for the deck designer/rep) — how to frame this slide in conversation.

**Voice calibration:**
- Formality: MEDIUM
- Energy: evaluator-forward ("the prospect should feel they're evaluating fit, not applying for permission")
- Data-forward, adjective-light
- Short phrases over complete sentences where it works visually

**Visual calibration (from `ezoic-style-design-bible.md`):**
- Cloud `#E3E3E3` surfaces with Charcoal `#252726` type; Ezoic Green `#70A92A` (the single accent) for the one thing the eye should land on. An ink `#252726` band is a local accent slide, not a theme — light, always
- Inter weights — Display Black/Bold for the headline stat, Text Regular for supporting copy; headings Title Case closed with a period, nothing in all caps
- If the slide is a proof point, treat the number as hero typography (big, black-weight, ink on cloud — or the green-led proof slot when it's the signature moment)
- Logo lockup in corner — horizontal lockup, emblem left / wordmark right. Use the approved files `/brand/lockup-dark.png` (on cloud) and `/brand/lockup-light.png` (on ink); never approximate the mark

**Anti-patterns:**
- "Who We Accept" / "Qualifying Publishers" framing — applies-for-permission vibe
- Bullet points that are full sentences
- Stock AI-hype graphics (neural nets, circuits glowing) — use actual product visuals, real dashboards, or simple data diagrams
- Generic corporate templates (stock themes, centered filler text, gradients) — violate brand direction; no brand gradient exists in the light system

---

## Internal Talk Track (for sales, CS, support)

**Purpose:** One-sentence-to-one-paragraph responses sales reps, PSMs, CS, and support can memorize and repeat. Ensures consistency across every customer conversation during a campaign.

**Audience:** Internal teams — sales, PSM, customer success, support.

**Structure:**
Simple Q/A format, grouped by common conversation starters.

Example (from 250K):
```
IF A PROSPECT ASKS ABOUT THE REQUIREMENT:
"We work with publishers doing 250K+ monthly users — looks like you're at [X],
so you'd be a good fit. The future web is complex and publishers with real
audiences need sophisticated tools. Integration is simple — just a JS snippet."

IF PROSPECT IS UNDER 250K:
"We have Ezoic Incubator for publishers under the threshold — 20 spots a
month. You can apply and if accepted, you'd have full platform access as
you grow."
```

**Voice calibration:**
- Formality: LOW (spoken voice)
- Energy: matter-of-fact, confident, rehearsable
- Short enough that a rep can deliver verbatim without sounding scripted
- Consistent phrasing across all reps — that consistency *is* the brand showing up

**Anti-patterns:**
- Long, paragraph-length talk tracks — unmemorable, get paraphrased into drift
- Sales objection *gotchas* — stay focused, stay calm, refocus on who we serve
- Adjectives — reps drop them in delivery anyway, so don't bother

---

## Help Center FAQ

**Purpose:** Self-service answers for common questions. Named, searchable, authoritative.

**Audience:** Publishers, prospects, press doing fact-checking.

**Structure:**
Q: Concise question in natural language ("Why 250,000 users?")
A: One-paragraph answer. Lead with the answer, follow with minimal rationale. Link to related resources if useful.

**Voice calibration:**
- Formality: LOW-MEDIUM
- Energy: instructional, direct
- No marketing language. This is fact delivery.

**Anti-patterns:**
- Marketing copy disguised as help copy ("Our revolutionary platform offers…")
- Defensive answers that reveal internal politics
- Answers longer than they need to be

---

## Blog Post / Website Copy

**Purpose:** SEO, thought leadership, product explanation, case-study delivery. Longer-form than LinkedIn; more SEO-indexed than press.

**Audience:** Varies — product pages target prospects; blog posts target publisher community + industry search.

**Structure (product pages):**
1. Hero headline — the product value prop in 5–8 words
2. Subhead — one sentence of what it actually is
3. CTA (Get Started / Check Eligibility / Learn More)
4. Solution overview — specific use cases or categories, laid out as an editorial bento (asymmetric, one dominant idea per view — never equal-card SaaS grids)
5. Interactive demo or product visual
6. Proof — customer logos, stats, case study quotes
7. Feature detail sections
8. Final CTA

**Structure (thought leadership blog):**
1. Hook paragraph — the tension or observation
2. Positioning pivot — "here's where we sit in this"
3. Substantive content — specifics, examples, data
4. Implications for publishers
5. Soft CTA / related reading

**Voice calibration:**
- Formality: MEDIUM
- Energy: informative, opinion-forward (for editorial); confident (for product)
- EPMV / identified traffic assumed fluency for publisher-audience blogs
- Product pages should lean on the editorial bento pattern — asymmetric, one dominant idea per view, never equal-card SaaS grids; one claim per card, specific and supported

**Anti-patterns:**
- Product pages that read like grant applications
- Blog posts that are thinly disguised product pitches — if it's a product pitch, it goes on a product page

---

## Case Study

**Purpose:** Named publisher proof-point, story-form.

**Audience:** Prospects in diligence phase; sales enablement.

**Structure:**
1. **At-a-glance box** — Publisher name, vertical, traffic scale, the headline result (EPMV lift % or revenue lift %)
2. **The situation** — who the publisher is, what they were dealing with before Ezoic
3. **The implementation** — how they integrated (JS snippet, timeline)
4. **The results** — specific numbers: EPMV lift, identified-traffic %, any UX metrics, months to payback
5. **Publisher quote** — in their voice, a specific observation (not "Ezoic is great")
6. **Next step for the reader** — a relevant CTA (EPMV Calculator, talk to sales, similar publisher)

**Voice calibration:**
- Formality: MEDIUM
- Energy: reporting, not hype
- Let the publisher be the hero of the story; Ezoic is the tool that worked
- Numbers first, narrative second

**Anti-patterns:**
- "With Ezoic, [Publisher] was able to…" — reframe as "After integrating Ezoic, [Publisher] saw X% lift in EPMV within Y months."
- Anonymizing when a named testimonial is available — name > anonymous every time, unless legal reasons

---

## Podcast (PubLab / Publisher Lab)

**Purpose:** Long-form authority, community building, SEO, referral content.

**Audience:** Publisher community, adjacent creators/operators.

**Voice calibration:**
- Formality: LOW (conversational)
- Energy: documentary / interview
- Ezoic is the producer, not the subject — respect the guest's expertise, let the guest talk, don't hijack for product pitches
- Product mentions only where organic

---

## Email Sequence (nurture / onboarding / win-back)

**Purpose:** Multi-touch campaigns with a specific goal and audience segment.

**Audience:** Specific segment — see `audience-segments.md`.

**Structure:** Usually 3–5 emails over 2–4 weeks.

For each email:
- Subject line: tell them what's inside; avoid clickbait
- Opening: one-line, direct
- Body: one idea, one proof point, one CTA
- Close: no pressure, clear next step

**Voice calibration per sequence type:**

| Sequence | Calibration |
|---|---|
| **New prospect nurture** | Build understanding; introduce EPMV + identity story over multiple touches |
| **Incubator applicant** | Welcome, set expectations, deliver value even before decision |
| **Grandfathered retention** | Quiet but consistent — feature announcements, proof of continued investment |
| **Win-back (ex-publishers)** | The "afters," low-pressure, PSM-driven |
| **Nurture after EPMV Calculator use** | Highlight the specific gap, offer concrete next step |

**Anti-patterns:**
- Every email pushing the same CTA — fatigues the recipient
- Urgency language ("Last chance!") — off-brand
- Drip cadences that feel automated — even if they are, write as if they aren't

---

## Website Product Page

See also: `product-catalog.md` for product-specific positioning.

**Purpose:** Primary conversion surface for a product.

**Structure (consistent across ezoic.com product pages):**
1. Hero — tagline-style headline + one-sentence subhead + primary CTA
2. Solution overview — specific categories or use cases, laid out as an editorial bento (asymmetric, one dominant idea per view — never three equal cards with icons)
3. Interactive demo or live product widget (where possible — the Audience Visualizer pattern)
4. Feature detail sections (usually 2–3 per product)
5. Proof — stats, customer quotes, logos
6. Final CTA

**Voice calibration:**
- Formality: MEDIUM
- Energy: confident, proof-heavy, short sentences
- Match the editorial bento vibe of the existing ezoic.com design — asymmetric, one dominant idea per view, never equal-card SaaS grids; one claim per card, not paragraphs

---

## Channel selection matrix — pick the right mix

For a given campaign, use this matrix to decide the channel mix:

| Campaign type | Primary channels | Secondary |
|---|---|---|
| **Positioning shift** (like 250K) | Press release, LinkedIn, customer email | Help center, sales deck, talk track |
| **New product launch** | Product page, LinkedIn, press release (if big), blog post | Customer email (for existing publishers), case study (post-launch) |
| **Feature update** | In-platform, email to affected publishers, blog post | Docs, help center |
| **Win-back initiative** | PSM 1:1 email, LinkedIn DM, targeted paid | Industry event conversations |
| **Brand / thought leadership** | LinkedIn (exec), blog, podcast (PubLab) | Press (if news-worthy) |
| **Top-of-funnel (SEO)** | Blog, Audience Visualizer, EPMV Calculator, case studies | Paid search, retargeting |
| **Incubator-specific** | Landing page, Incubator-targeted nurture, application flow | LinkedIn shares from execs |

**Rule:** Every campaign touches at minimum 3 channels. Single-channel campaigns don't embed the new normal. (See the 250K "Ongoing: every mention" principle — repetition across channels is how positioning sticks.)
