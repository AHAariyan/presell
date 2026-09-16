# LaunchKit for Android — progress log and next steps

Last updated: 2026-09-15 23:55 (Asia/Dhaka)

## What this is
A pre-sell test for a paid Jetpack Compose launch kit. Rule: sell before building. Nothing gets built until strangers reserve.
Price: $79 early bird (first 50), then $149. v1 ships 1 October 2026, full refund if it slips.
Page: https://ahaariyan.github.io/presell/launchkit/

## Message (use these words everywhere)
- Tagline: **Ship a paid Android app in days, not months.**
- Supporting line: a launch-ready codebase on Google's recommended architecture (laid out like Now in Android), kept clean by lint guardrails, an AI-agent guideline (AGENTS.md) and tests at every layer.
- Say "Google's recommended app architecture", never "state-of-the-art". Mention Now in Android once as proof.

## Done (2026-09-14 to 2026-09-15)
| Item | State |
|---|---|
| Pre-sell page (blueprint design, Fig. 1 module map from NIA's build files) | Live |
| Hero, meta description, Open Graph + Twitter cards aligned to the tagline | Live |
| Reserve buttons → email to abdulhady.aariyan@gmail.com (no card, counts as a reservation) | Live; Gumroad checkout not yet wired |
| Analytics: PostHog (US cloud, project 610866), cookieless, session replay, events reserve_click / scroll_depth / time_on_page / outbound_click | Live, verified end to end |
| UTM tracking links, one per channel (`launch/utm-links.txt`) | Done |
| X product account @android_launch: avatar, header (tagline), bio (tagline) | Done |
| X thread, benefit-led copy, pinned: https://x.com/android_launch/status/2099907446143959234 | Posted 2026-09-15 23:05 |
| r/androiddev discussion post (link withheld to a comment) | Account u/Aariyan-AH BANNED by Reddit's automated systems (confirmed logged-out); modmail refused; appeal submitted 2026-09-15 (launch/02-reddit-appeal.txt). Reddit is out of this launch. |
| Indie Hackers post | Blocked: new accounts can't post |
| Indie Hackers product listing | Blocked: "Could not verify your account"; profile @ah_hady not yet completed; retry after profile + email verification, else next week |
| Launch helper `launch.sh` and per-channel texts in `launch/` | Done |

## Decision 2026-09-15 23:55: observe X for 24 hours before any other channel
X is the only channel that went live cleanly. Reddit is out (account banned, appeal filed). Indie Hackers is gated. Kotlin Slack invite and Kotlin Weekly email are pending on the user's side.
Until 2026-09-16 ~23:00 Dhaka: no new posts anywhere. Watch PostHog (visitors from t.co, reserve_click) and the inbox (reservation emails). Reply to every X reply within 12 hours.
Then resume the channel list below in order.

## Not done yet (in order)
1. LinkedIn: dropped, the owner does not post personal projects there.
2. **Kotlin Slack** (#android, #compose): paste `launch/04-slack-discord.txt` once the invite email arrives. No karma gate.
3. **Kotlin Weekly**: send the draft already open in Mail (`launch/05-kotlinweekly-email.txt`).
4. **Android Weekly**: submitted 2026-09-16 00:05 via the /links form (URL only; no acknowledgement). Editor picks for the Sunday issue.
5. **Ten direct messages** on X/LinkedIn to people complaining about NIA complexity, Play Billing, or AI tools breaking architecture: `launch/06-dm-template.txt`.
6. Reply to your own X post 5 within the day: "If you build Android apps, tell me the one lint rule you'd want first. I'll add the best answers to v1."
7. When the first reservation email arrives: create the Gumroad product (pre-order, $79, release 2026-10-01) and set `CHECKOUT_URL` in `index.html`, then re-post "checkout is open".
8. Indie Hackers: complete profile (bio in this file's history), verify email, retry the product form once.
9. Reddit: wait for the ban appeal. If reinstated, earn ~50 karma with helpful comments before any post. No further Reddit activity this launch.

Note: the Android Dev Discord invite code "androiddev" is dead; the current invite is behind the Discord Server bookmark on the r/androiddev page. Parked.

## Daily routine (2 minutes)
- Inbox: count reservation emails. That is the real number.
- PostHog → Activity: visitors by utm_source; reserve_click count; watch one or two session replays to see where readers stop.
- X notifications, Reddit modmail, Discord/Slack replies: answer everything within 12 hours using the reply playbook in `posts.md`.
- Log the counts below.

## Counts
| Date | Visitors | reserve_click | Reservation emails | Notes |
|---|---|---|---|---|
| 2026-09-15 | 2 (both internal) | 0 | 0 | launch day; thread reposted 23:05 |

## Decision: 2026-09-18, ~23:00 Dhaka (72 h after the repost)
- ≥ 40 reservation emails, or ≥ 5 paid pre-orders once Gumroad is live → build v1 in the 13 days before 1 October.
- Below that → refund anyone who paid, write a five-line post-mortem in IndieStudio/IDEA-PIPELINE.md, start the next pre-sell from `Presell/_template/`.
- Read the miss honestly: if visitors were near zero, it's a distribution problem (no audience yet), not a product verdict. If visitors came but didn't click, it's the offer or the page.

## Lessons recorded
- Reddit and Indie Hackers gate new accounts. Reddit banned the account outright after one filtered post plus repeated modmail attempts. Age accounts and earn karma weeks before a launch; never retry a rejected action repeatedly.
- Analytics and tracking links must exist before the first post; the first thread went out without them.
- One message everywhere: the tagline drove edits to the thread, bio, header, page hero, meta tags and IH tagline. Decide the line first next time.
- Never claim numbers you can't show (removed "shipped five apps").
- X can't edit posts; the first thread was deleted and reposted, which also restarted the 72-hour clock.
