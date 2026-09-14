# LaunchKit for Android — where to post and what to write (email-reservation phase)

Page: https://ahaariyan.github.io/presell/launchkit/
Do NOT post until the Reserve button is wired to an owned email address (owner to supply).
Pass bar for this phase: ≥ 40 reservations by email in 72 h (no payment yet). Then add Gumroad and re-post "checkout is open".

Order of posting (same day, in this order — each gives the next one social proof):
1. X thread (product account) · 2. r/androiddev · 3. Indie Hackers · 4. Kotlin Slack #android + Android Dev Discord self-promo channels · 5. Android Weekly link submission · 6. 10 direct DMs.
Hacker News and Product Hunt wait until checkout is live (they punish pre-sells without a product).

--------------------------------------------------------------------------
## 1. X — thread (5 posts). Pin the first.

(1/5)
Your Android codebase has a half-life.
Day 1: clean layers, tidy modules.
Month 6: a ViewModel calls a DAO "just this once", a Composable does business logic, and the AI agent you let commit last week quietly added a fourth navigation pattern.
We built the kit that stops the decay. 🧵

(2/5)
It starts from Google's own architecture — the exact module graph of Now in Android: :app → :feature:*:api/impl → :core:* → data sources, convention plugins underneath.
Not "inspired by". The same names, the same rules. Fig. 1 on the page is drawn from NIA's build files.

(3/5)
Then it adds what Google's sample doesn't ship:
· custom lint that FAILS THE BUILD when a layer is crossed
· a code of conduct for the codebase (the why, not just the rule)
· AGENTS.md so Claude / Gemini / Cursor extend the app without eroding it
· tests at every layer + a guide that says how much is enough

(4/5)
And the boring parts every paid app rebuilds: Play Billing 9 + a real paywall, onboarding, settings, optional sign-in, analytics/crash hooks behind interfaces, in-app review, privacy + Data-safety generators, CI to a signed bundle.

(5/5)
v1 ships 1 Oct. Early bird $79 (then $149). Reservations open now, no card needed:
https://ahaariyan.github.io/presell/launchkit/
Question for you: what's the one rule you wish your build enforced automatically?

Hook alternatives for post 1 (pick the one that sounds like you):
· "Every Android starter kit gives you screens. None gives you the discipline."
· "Now in Android is the best Android architecture there is. It's also not shippable. We fixed the second part."
· "Let the agents commit. The architecture holds. Here's how."

--------------------------------------------------------------------------
## 2. r/androiddev (owner's account; read the sidebar — some days self-promo goes in the weekly thread)

Title: I'm pre-selling a Compose codebase that's literally Now in Android's module graph + lint that fails on layer violations + an AGENTS.md. Would you pay $79?

Body:
I've shipped five apps and rebuilt the same foundation five times: billing, paywall, onboarding, settings, CI — and every time the architecture drifted within months, especially once AI tools started making commits.

So I'm building the version I wanted, and selling it before it's done (v1 on 1 Oct, full refund if I miss):

- Architecture: the exact NIA module graph (:feature:*:api/impl, :core:ui/domain/data/…, build-logic convention plugins), scoped so you can start with one module and grow without a rewrite.
- Guardrails: custom Android Lint rules that fail the build on cross-layer calls and misplaced dependencies, dependency-guard baselines, a written code of conduct for the repo.
- Agents: AGENTS.md at root and per module — where things go, how to add a feature, what to test, what never to touch. Works with Claude Code, Gemini CLI, Cursor, Copilot.
- Tests: unit + Turbine ViewModel tests + Compose UI + Roborazzi screenshots, a :core:testing fakes module, and a TESTING.md that says how much to test at each layer.
- Launch modules: Play Billing 9 + paywall, onboarding, settings, optional Credential Manager sign-in, analytics/crash behind interfaces, in-app review, privacy + Data-safety generators, GitHub Actions to a signed bundle.

Page with the spec sheet and the module map: https://ahaariyan.github.io/presell/launchkit/

Two honest questions: is $79 (early bird; $149 after) fair for this? And which lint rule would you want first?

--------------------------------------------------------------------------
## 3. Indie Hackers — post

Title: Pre-selling an Android codebase that stays world-class after you stop looking at it ($79 early bird, v1 ships 1 Oct)

Body:
Web has ShipFast. React Native has kits. Native Android has nothing with billing, a paywall, and real architectural guardrails.
LaunchKit is Google's recommended architecture (Now in Android's module graph, name for name) plus the discipline layer: lint that fails the build on layer violations, a code of conduct, an AI-agent guideline, and tests at every layer with guidance. Then the launch modules every paid app needs.
I'm selling it before building it — email reservations now, checkout next week, refund if v1 misses 1 Oct.
Feedback wanted on the spec sheet and the price: https://ahaariyan.github.io/presell/launchkit/

--------------------------------------------------------------------------
## 4. Kotlin Slack (#android, #compose) and Android Dev Discord (#self-promotion)

Short: "Pre-selling a Compose codebase built as Now in Android's module graph + lint that fails on layer violations + AGENTS.md for AI agents + full tests. $79 early bird, v1 Oct 1, refund if late. Spec sheet + module map: <link>. Would love harsh feedback on the spec."

--------------------------------------------------------------------------
## 5. Android Weekly — submit the link (androidweekly.net → Submit)
Title: LaunchKit — a Compose codebase on NIA's architecture with lint guardrails and an AI-agent guideline (pre-order)

--------------------------------------------------------------------------
## 6. Ten direct DMs (X / LinkedIn)
Search: "Now in Android" too complex · "modularization" Android pain · "Play Billing" hours wasted · "Copilot broke my architecture".
Message: "Saw your post about <their pain>. I'm building exactly the fix — NIA's module graph with lint that fails the build on layer violations + an AGENTS.md. Would this have saved you the rewrite? <link>"

--------------------------------------------------------------------------
## Reply playbook (answer every comment within 12 h)
· "Why not NIA?" → It is NIA's graph; NIA has no billing/paywall/onboarding/compliance/agent guide, and no path from 1 module to many.
· "Too expensive" → $79 is under two hours of a contractor. If it doesn't save you a day, refund.
· "Show code" → Share the module map + the AGENTS.md excerpt; offer a 15-min call to walk the architecture.
· "KMP?" → Native first; KMP if buyers ask.
