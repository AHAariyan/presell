#!/bin/bash
# LaunchKit launch helper. Copies each text to the clipboard and opens the page.
# It never posts anything. You paste, you click Post, you press Enter here.
cd "$(dirname "$0")/launch" || exit 1
step() {  # step "<what to do>" <file> [url]
  echo; echo "================================================================"
  echo "$1"; [ -n "$3" ] && { echo "Opening: $3"; open "$3"; }
  pbcopy < "$2"; echo "(copied to clipboard: $2, $(wc -c < "$2" | tr -d ' ') chars)"
  read -r -p "Press Enter when done (or q to quit): " a; [ "$a" = "q" ] && exit 0
}
echo "LaunchKit launch helper. 12 steps. Nothing is posted automatically."
step "X 1/5: click the blue Post button, paste this as post 1, then press the + button." 01-x-post-1.txt "https://x.com/compose/post"
step "X 2/5: paste into the second box, then press +." 01-x-post-2.txt
step "X 3/5: paste into the third box, then press +." 01-x-post-3.txt
step "X 4/5: paste into the fourth box, then press +." 01-x-post-4.txt
step "X 5/5: paste into the fifth box, attach the Fig. 1 image, click Post all. Then pin post 1 to your profile." 01-x-post-5.txt
step "Reddit r/androiddev: check the sidebar rules first. Paste this as the TITLE." 02-reddit-title.txt "https://www.reddit.com/r/androiddev/submit"
step "Reddit: now paste this as the BODY, then Post." 02-reddit-body.txt
step "Indie Hackers: click New Post. Paste this as the TITLE." 03-ih-title.txt "https://www.indiehackers.com/"
step "Indie Hackers: paste this as the BODY, then publish." 03-ih-body.txt
step "Kotlin Slack (#android or #compose) and Android Dev Discord (#self-promotion): paste this blurb in each." 04-slack-discord.txt "https://kotlinlang.slack.com/"
step "Android Weekly: click Submit a link, paste the page URL, and use this as the title." 05-androidweekly-title.txt "https://androidweekly.net/"
step "Direct messages: search X for 'Now in Android too complex', 'Play Billing hours', 'Copilot broke my architecture'. Send this template to 10 people, replacing <their pain>." 06-dm-template.txt "https://x.com/search?q=%22Now%20in%20Android%22%20complex&f=live"
echo; echo "All 12 steps done. Tell Claude the thread URL to start the 72-hour clock."
