# Ezoic Audience Segments

The audiences Ezoic markets to. Every skill reads this file to answer: who exactly is this campaign for?

**For authoritative segment-specific value props and proof points:** cross-reference `ezoic-context.md § 4, § 6, § 14`.

**As of 2026-07-01 — next review 2026-10-01.**

Ezoic's audience is **not** just "publishers." In 2026, the platform serves **any digital business operating at scale that needs to monetize audiences through ads**. Segments are defined by the shape of the business — not generic B2B personas.

---

## Primary segments (all 250K+ monthly users — 2026 minimum)

### 1. Large Web Apps & Tools

**Who they are:** Freemium SaaS-like web apps, online tools, utilities, AI tools, productivity apps, browser extensions with audiences. Often have high user volume but under-monetized free tiers.

**What they care about:**
- Turning free users into revenue without hurting conversion
- Rewarded mechanics that users *choose* (feature unlocks, premium mode, export access)
- Not degrading UX — free tier is still the acquisition funnel
- Minimal engineering lift — their devs are shipping product, not ad tech

**What moves them:**
- Specific "free-tier → revenue engine" narrative ("every free session becomes a potential revenue event")
- Rewarded mechanics framed as user-respecting, not user-exploiting
- Single JS snippet integration — low engineering cost to try
- Low-lift to try, expert-operated in production — deployments "strategically scoped to each customer" (May 2026 PR; see `proof-points.md`)

**Voice calibration:**
- Frame in product/business terms, not ad-tech jargon
- Respect UX sensitivity — they've seen ad implementations that hurt conversion
- Lead with "your free tier is costing you money" — it's a reframe they haven't heard

**Primary products:** SaaS Monetization, Rewarded Ads (for feature unlocks), Core Platform, ezID (for logged-in users).

**Primary channels:** Founder/product-lead social, LinkedIn, HackerNews-adjacent content, SaaS communities, targeted outbound to product/growth leaders.

---

### 2. Online Games (Web & Mobile)

**Who they are:** Web-based games, mobile games with web presence, HTML5 game portals, indie game studios, game publishers. Natural home for rewarded ads.

**What they care about:**
- Premium CPMs on rewarded engagement (not filler display)
- Ad placement that doesn't break flow
- Easy integration with game event hooks (level completion, retries, currency unlocks)
- Revenue diversification beyond IAP

**What moves them:**
- "6–15x display CPMs on opted-in engagement" — rewarded economics vs. standard display (see `proof-points.md`)
- Turnkey rewarded ad infrastructure — not DIY
- Turnkey to start, expertise-run after: +27% average customer display EPMV and ad loads cut by a full second platform-wide (May 2026 PR; see `proof-points.md`)
- ML placement optimization (per-player, not per-game)
- Case examples of game publishers on the platform

**Voice calibration:**
- Gaming-native (level, retry, currency, lives, unlocks — the vocabulary is native to them)
- Don't over-explain the rewarded model — game publishers know it; explain why Ezoic does it better
- Confident about being broader than "a gaming ad network"

**Primary products:** Rewarded Ads (primary), Ad Breaks (gaming context), Core Platform.

**Primary channels:** Game developer conferences (GDC), game-industry publications, Discord/Reddit communities, targeted outbound to monetization leads.

---

### 3. SaaS with Free Tiers

**Who they are:** SaaS companies with freemium pricing — free tier exists to drive acquisition but costs money to serve. Usually B2B or prosumer SaaS. The free tier is either converting users (revenue pending) or subsidizing a user base that won't convert.

**What they care about:**
- Free-tier users not being pure cost centers
- Ads that don't touch the conversion funnel — no ads at checkout, during trials, at upgrade prompts
- Goal-setting / UX guardrails that give them control
- Revenue as a *floor* on free-tier economics, not the main story

**What moves them:**
- "Your free tier is costing you money. Ezoic makes it generate money — without touching your conversion funnel."
- Goal-setting infrastructure that prevents ads at conversion-critical friction points
- ML-optimized discrete ads, not interruptive display
- Not a set-and-forget widget: easy to try, but deployments are "strategically scoped to each customer" by Ezoic's team (May 2026 PR; see `proof-points.md`)

**Voice calibration:**
- SaaS-native (conversion funnel, AARRR metrics, CAC, LTV, free-to-paid conversion)
- Revenue is the *layer on top*, not the replacement for monetization strategy
- Respect that their primary business is subscriptions — ads are ancillary

**Primary products:** SaaS Monetization, Core Platform, Rewarded Ads (for feature/trial extensions).

**Primary channels:** SaaS communities (Indie Hackers, r/SaaS, SaaStock), B2B SaaS LinkedIn, founder-focused newsletters.

---

### 4. Newsletter Publishers

**Who they are:** Operators of email newsletters with verified, consented subscribers. The first-party-data goldmine — an authenticated list but often no programmatic monetization mechanism.

**What they care about:**
- Turning subscriber lists into premium ad audiences
- Frictionless identity capture that doesn't break subscription flow
- Privacy compliance (consent-first — their trust with subscribers matters more than anything)
- Premium CPMs that reward the authenticated nature of their audience

**What moves them:**
- "Your email list is the most valuable asset in digital advertising right now."
- "An email address is worth 10x more than a cookie." (rhetorical framing per `ezoic-context.md § 5` — not a citable stat; no `proof-points.md` entry)
- ezID + UID2 + TTD OpenPath — enterprise identity without the enterprise team
- Specific identified-traffic EPMV lift (110%+ U.S.)
- Custom first-party data and ad operations planning built *with* them — a dedicated account specialist and personalized revenue strategy sessions come standard at 250K+ (Business tier; see `product-catalog.md § Business`)

**Voice calibration:**
- Identity-native and privacy-native (consent-first, UID2, hashed email, privacy-compliant)
- Respect the reader relationship — never frame subscribers as exploitable
- Lean on the "bridging problem" framing — most programmatic identity is guessed; these subscribers are verified
- Consultative, not self-serve: pitch a hands-on first-party-data plan for *their* list, not a widget they configure alone

**Primary products:** ezID, Google One Tap, Core Platform.

**Primary channels:** Newsletter-operator communities (The Sample, beehiiv blog, Substack Notes), LinkedIn creator/media content, direct outbound to newsletter operators with 100K+ subscribers (internal targeting heuristic — not a public eligibility floor or externalizable claim).

---

### 5. High-Traffic Content Publishers

**Who they are:** The legacy publisher segment — content sites, media brands, vertical publishers, niche authorities. Often multi-site operations. 250K+ monthly users, traffic-SEO dependent, feeling the AI-Overview and zero-click search squeeze.

**What they care about:**
- EPMV — absolute number, direction, volatility
- Identity infrastructure as cookies deteriorate
- Site performance and UX (Google Core Web Vitals, ad density)
- Direct brand deals that bypass the programmatic tax
- Video revenue diversification
- Not getting burned by ad-tech vendors that disappear post-integration

**What moves them:**
- Specific performance deltas (EPMV lift at their scale)
- Google Premier status + TTD OpenPath + UID2 — the credential stack
- Open.Video as video revenue layer
- Direct engineering escalation ("someone I can call when something breaks")
- A named team, not a ticket queue — dedicated account specialist, strategic management, and personalized revenue strategy sessions come standard at 250K+ (Business tier; see `product-catalog.md § Business`)
- Peer signal — who else at their scale uses Ezoic

**Voice calibration:**
- Publisher-native fluency — EPMV, DSP, SSP, header bidding, identity, JS snippet. Don't over-explain.
- Acknowledge industry complexity (AI disruption, cookie collapse) without doom-spiraling
- Lead with "afters" — results before narrative
- Consultative by default — "Ezoic *is* the ad ops team": strategy sessions and custom ad ops planning are part of every 250K+ relationship, so pitch the partnership, not just the platform

**Primary products:** Core Platform, ezID, Open.Video, Big Data Analytics, Brand Deal Hunters (at scale).

**Primary channels:** AdExchanger, Digiday, industry conferences (Programmatic I/O, IAB), PubLab podcast, LinkedIn exec thought leadership, sales outreach.

---

### 6. Enterprise Publishers ($1M+/yr Revenue)

**Who they are:** The largest digital businesses on the platform — $1M+/yr in revenue, often with complex web applications, multiple properties, in-house ad ops teams (or the desire to replace them). The segment Ezoic has been building custom solutions for "over the last couple years."

**What they care about:**
- Direct Ezoic engineering access
- 24/7 support, SLA
- Exclusive brand campaigns via Brand Deal Hunters
- Custom solutions for non-standard ad surfaces (video, gaming, web-app UI)
- Strategic partnership, not vendor transaction

**What moves them:**
- "We've already built what you'd pay an agency team to build" — SPO, identity, demand, testing, video
- Evidence Ezoic has built for complex web applications before
- Direct engineering escalation path
- Google Premier status + TTD OpenPath + UID2 (the credential trifecta)

**Voice calibration:**
- Senior, peer-level, technically fluent
- Less "our platform" and more "what we built for customers like you"
- Custom > Productized in framing
- Long sales cycle; value-per-touch > volume-of-touches

**Primary products:** VIP & Enterprise tier (1M+ monthly users), Core Platform, ezID, Brand Deal Hunters, Custom Solutions.

**Primary channels:** Direct executive sales, industry events, custom RFPs, 1:1 exec relationships, enterprise-tier press.

---

### 7. Native Apps (iOS & Android)

**Who they are:** Owners of native iOS and Android apps with real audience value — logged-in user bases, engaged sessions, a product worth operating carefully. Mirrors the live `/apps` page ("Apps — Enterprise app monetization for iOS & Android").

**How they enter:** An enterprise support path, not self-serve. Live-page verbatim: "An enterprise path, not a self-serve promise" — "This isn't a self-serve switch for every app. It's an enterprise support path for app owners with real audience value and a product worth operating carefully." Sales-gated: the only CTAs are "Talk to Ezoic" / "Talk to our team."

**What they care about:**
- Monetization that doesn't damage the product — formats "placed at natural moments, never plastered over the experience"
- Managed setup, ad operations, and revenue management — not another SDK to babysit
- Identity value from logged-in users via ezID — "Logged-in users are a revenue signal"
- Reporting "tied to product decisions"

**What moves them:**
- Anchor, native, interstitial, and rewarded formats — operated for them, not templated
- The four-step guided path: review app/audience → build the plan → launch with controls → operate and improve
- "Operated, not templated."

**Voice calibration:**
- Enterprise, consultative, product-respecting — the expertise-led register throughout
- **Guardrail:** the "JS snippet. Live in minutes." friction-killer and ALL self-serve messaging do NOT apply to this segment. Integration is SDK/architecture-dependent and guided — never promise instant self-serve setup to app prospects.

**Primary products:** Managed app monetization (anchor / native / interstitial / rewarded), ezID (logged-in users), Core Platform.

**Primary channels:** Direct enterprise sales ("Talk to Ezoic"), industry events, targeted outbound to app owners and product leaders.

---

## Lifecycle / relationship segments

### 8. Ezoic Incubator Applicant

**Who they are:** Under-250K digital businesses that want to work with Ezoic. Often a growing site or app, sometimes a side-project that's building toward full operation. Motivated, scrappy, often more ad-tech-savvy than their traffic suggests.

**What they care about:**
- Getting accepted (up to 20 sites or apps selected each month — competitive)
- Clear path to graduate to main platform at 250K
- Resources and tools that match a bigger operation's capability

**What moves them:**
- Application clarity — what's the criteria, what happens if accepted
- Peer stories of businesses that started in Incubator and grew
- "Staying true to our roots" — it's mutual, not charity

**Voice calibration:**
- Explain Incubator mechanics clearly but don't patronize on ad tech
- Scarcity is the value — don't apologize for the up-to-20 monthly limit
- Frame as partnership and growth path
- Standard phrasing: "up to 20 sites or apps selected each month." (CMO flag: live /incubator says "20 sites or apps are selected each month" while /services says "~10-20 applicants accepted monthly" — "up to 20" covers both until the site owner reconciles.)

**Primary channels:** Website application flow, Incubator-specific nurture, help center, owned social.

---

### 9. Grandfathered Publisher (existing account under 250K)

**Who they are:** Publishers on Ezoic before the 250K requirement. Full platform access regardless of current traffic. Grandfathered status is valuable — and tied to continuous service.

**What they care about:**
- Confirmation they're not being kicked off
- Understanding what changed and what didn't
- Continued platform access, new features, support parity

**What they worry about (often unspoken):**
- "Is Ezoic abandoning us as they go upmarket?"
- "Will the service degrade?"
- "Will I still get access to new features like ezID and Open.Video?"

**What moves them:**
- Reassurance, delivered once clearly, not repeatedly
- New features (ezID, Open.Video) — "we're investing, not just maintaining"
- Transparent about the "why" without over-explaining

**Voice calibration:**
- Calm, direct, one clear statement of "you're grandfathered, nothing changes"
- Follow with context that makes them feel valued, not tolerated
- Mention re-entry policy gently — never as a threat

**Primary channels:** Direct email, in-platform notifications, account manager touchpoints.

---

### 10. Win-back Target (ex-customer on a competitor)

**Who they are:** Former Ezoic customer at 250K+ who left — often to AdSense, Mediavine, Raptive, Playwire, Monumetric, or in-house. PSMs actively targeting this segment.

> **Competitor gates shifted 2025–2026 (as of 2026-07-01):** Raptive minimum dropped to 25K monthly pageviews (Oct 2025); Mediavine moved to revenue-based tiers (Jan 2026; invitation-only Premiere at $500K–$999K annual ad revenue); Playwire requires 500K PV/month with a dedicated casual-gaming vertical; Venatus (which acquired AdinPlay) owns browser-game monetization. Verify current gates in `ezoic-context.md § 10` before writing refocus copy.

**What they care about:**
- Results delta vs. where they are now
- Was it personal-fit or platform-capability that made them leave?
- Whether coming back is a hassle
- Face-saving — no one wants to be re-sold right after leaving

**What moves them:**
- Specific "afters" — what's changed since they left (ezID launch, TTD OpenPath, Open.Video, 15%+ EPMV lift, 110%+ identified)
- Quiet technical proof — identity infrastructure, custom solutions for complex web apps
- Low-friction return (JS snippet)
- Implicit stick: "If you ever want to come back and you're below 250K, Incubator is the only path — up to 20 sites or apps selected each month, and history doesn't guarantee a spot."

**Voice calibration:**
- Direct, specific, not salesy
- Lead with what's new / what's changed, not "we miss you"
- "I know you moved to [competitor]" — name it, don't disparage
- End no-pressure — plant the idea, don't close in one touch

**Primary channels:** 1:1 PSM email, LinkedIn DM, targeted retargeting, industry event conversations.

---

### 11. Competitor-using Prospect

**Who they are:** 250K+ digital business on AdSense, Mediavine, Raptive, Playwire, Monumetric, or in-house. Never been on Ezoic. Knows of us but may have outdated info (especially the DNS integration myth).

> **Note:** competitor entry gates changed in 2025–2026 — see the gate update under segment 10 (Win-back) and verify against `ezoic-context.md § 10` before writing competitive copy.

**Common misconceptions:**
- "Ezoic requires DNS-based integration" (outdated — JS snippet is the default)
- "Ezoic is just for smaller publishers" (outdated — 250K+ is the floor, and the audience includes web apps/games/SaaS)
- "AdSense is simpler" / "Our current setup is fine"

**What moves them:**
- Busting the DNS myth ("JS snippet. Live in minutes.")
- EPMV Calculator — concrete delta for their specific traffic
- Identity infrastructure story (ezID) as competitive differentiator
- Google Premier + TTD OpenPath as the credential stack

**Voice calibration:**
- Never disparage their current platform
- Lead with what's true about Ezoic today, not what they remember
- Neutralize the DNS objection early and often

**Primary channels:** Paid search, industry events, content SEO, sales outreach, competitive landing pages.

---

## Advertiser side (secondary)

### 12. Advertiser / Agency / Brand

**Who they are:** Agencies and brands buying programmatic inventory on Ezoic-powered sites — the demand side of Ezoic's marketplace.

**What they care about:**
- Inventory quality, brand safety, audience quality
- Verified, consented first-party identity (post-cookie readiness)
- Measurable performance and attribution
- Direct access to premium, brand-safe publishers

**Voice calibration:**
- Frame in "premium inventory / verified audiences" language
- Jounce Media "Premium" classification, 80% applicant rejection rate, Google Premier partner
- Less about publisher-side value, more about advertiser-side signal quality

**Primary channels:** Industry events (IAB ALM, Programmatic I/O, Cannes Lions), agency briefings, inventory sell-sheets, TTD co-marketing.

**Note:** This segment is secondary to customer-side marketing. Most skill invocations will be customer-side.

---

## Creator-economy segment (Open.Video adjacent)

### 13. Independent Creator

**Who they are:** Creators who want to quit or reduce dependence on YouTube. Want to own their domain, content, and revenue.

**What they care about:**
- Platform independence — YouTube takes 45% of long-form ad revenue (and 55% of Shorts) and controls the relationship
- Domain ownership — SEO on their domain, not YouTube's
- Audience ownership — direct subscriber relationships

**Voice calibration:** Different from Ezoic Ads voice. Creator-independence framing. Handle as distinct lane. See `product-catalog.md → Open.Video (creator-facing positioning)`.

**Primary channels:** Creator-economy newsletters (Peter Yang, Creator Economy Report, Exception), YouTube (ironic but effective), creator Discord communities, podcast appearances.

---

## Segmentation rules for campaigns

When planning a campaign:

1. **Name the primary segment in one sentence.** If you can't, the campaign has no audience.
2. **Acknowledge secondary segments that will be touched by public channels** (press, LinkedIn, blog). Every public asset touches all segments. Write for the primary without alienating the others.
3. **If the campaign touches segments with conflicting interests** (e.g., announcing 250K hits Scale-prospects positively and Grandfathered-under-250K negatively), plan **separate assets** for each segment. Don't force one-size-fits-all.
4. **Never market to the wrong segment.** Sending Scale-messaging to an Incubator applicant feels tone-deaf. Sending Incubator nurture to Enterprise feels patronizing.
5. **Don't collapse distinct audiences into "publishers" when the audience is broader.** If the campaign is for web apps, say web apps. If games, say games. Specificity respects the reader; generality reads as generic.

---

## Objection handling quick reference

| Objection | Segment | Response pattern |
|---|---|---|
| "We don't have an ad ops team" | Web App / SaaS / Newsletter | "Ezoic *is* the ad ops team — AI optimization, demand management, analytics, experts included." |
| "I'm under 250K — can I join?" | Incubator | "Incubator selects up to 20 sites or apps each month. Applying is the path." |
| "I heard Ezoic needs DNS changes" | Competitor-using | "JS snippet is the default. Live in minutes." |
| "We left Ezoic, it wasn't working" | Win-back | "A lot has changed — ezID, TTD OpenPath, Open.Video, Brand Deal Hunters, Enterprise tier. 15%+ EPMV lift at 250K+; 110%+ on identified U.S. traffic." |
| "Will the 250K change affect me?" | Grandfathered | "No — grandfathered. Nothing changes." |
| "Are you abandoning smaller publishers?" | Grandfathered / public | "Incubator selects up to 20 sites or apps each month. Staying true to our roots." |
| "Free-tier users earn nothing, is that true?" | SaaS | "Not with Ezoic. ML-optimized ads that don't touch the conversion funnel." |
| "Cookies are dying — what do we do?" | Newsletter / Content / All | "ezID and UID2 integration. Your first-party data is already worth more than cookies." |
| "We're stuck on YouTube" | Video content | "Open.Video. Your domain, your revenue (100%), your audience." |
| "We tried optimization, it hurt UX" | All | "You set the UX guardrails — a configuration only ships when your UX and revenue improve together." |
| "Why not just use AdSense?" | Competitor-using / Scale prospect | Do not disparage. Use EPMV Calculator + identity story + full-stack framing (ezID + SPO + Brand Deal Hunters) + JS snippet friction-killer. |
| "Rewarded ads only work for games" | SaaS / Web App / Content | "We've built rewarded infrastructure for any digital business — content reveals, feature unlocks, LLM prompts, streaming skips, downloads, community access." |
