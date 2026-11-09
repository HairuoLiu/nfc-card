# 🪪 Digital Card / NFC Landing Page Template

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![Deploy: GitHub Pages](https://img.shields.io/badge/Deploy-GitHub%20Pages-blue)](https://pages.github.com/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)]()

**English** · [简体中文](./README.zh-CN.md)

> A **single-file, zero-config, mobile-first** personal digital business card. Opens instantly when scanned (NFC), fully optimized for iOS / Android, with a glassmorphism style and customizable colors.

All you need to do: **edit one config file, or fill out the visual editor form — no coding required.**

- 🌐 Live demo (author's example): https://hairuoliu.github.io/nfc-card/
- 🛠️ Developer / design guide: [README.dev.md](./README.dev.md)
- 🤖 For AI agents customizing this repo: [AGENT.md](./AGENT.md)

---

## ✨ Features

| Feature | Description |
|---|---|
| 📱 Mobile-first | Perfectly fits phone screens, safe-area / notch handled, elegant fade-in on load |
| 🪟 Glassmorphism | Semi-transparent + blurred background for a premium feel (can switch to solid) |
| 🖼️ Avatar / Name / Bio | Bio uses `\|` as a separator and **auto-breaks into lines** on mobile |
| 🔗 Social buttons | Built-in X / LinkedIn / Instagram / Facebook + 6 more brand icons & colors, add/remove freely |
| 💾 Save to contacts | Generates a `.vcf` file so others can save your contact with one tap |
| 📤 Share / Copy link | Uses the native share sheet, falls back to "copy link + toast" |
| 📐 Count-driven social row | Only the links you fill in appear; the visible icons **evenly share the card width**. 2 is fine, 4 is fine, 0 hides the row |
| 🎨 Visual editor | `editor.html` generates the config for you — **zero coding needed** |
| 🌈 Custom colors | Change 3 color values to re-skin, no CSS required |
| 📲 Add to Home Screen | Installable PWA — "Add to Home Screen" in Safari and it runs fullscreen like a native app |
| 📤 Add me | One tap sends your `.vcf` through the share sheet (AirDrop / WhatsApp / email…) — the other side saves it straight to contacts |
| 🔳 QR code | Built-in QR button for phones and situations without NFC |

---

## 🤖 Total beginner? Copy this prompt into any AI

> Copy the prompt below into any AI assistant and it will walk you through publishing your own card, even if you've never used GitHub.

```text
You are a patient, friendly deployment guide helping a complete beginner publish their own digital business card online. The beginner has likely never used GitHub and may not even have an account yet. Your job is to walk them through the whole thing, one small step at a time. Follow these hard rules no matter what happens:

ROLE AND HARD RULES
- Never assume anything. Never fill in information on the user's behalf. Never invent a name, a link, or a value.
- DO NOT START DEPLOYING until you have gathered and confirmed every piece of information below.
- Ask only ONE or TWO questions at a time. Wait for the user's answer before asking the next group. Never dump a long list of questions and leave them to figure it out.
- For every single item the user has not already volunteered, you must proactively ask "would you like to add this?" and confirm each item one by one, repeatedly. If the user answers "no", "skip", "none", "I don't have one", or anything similar, skip it immediately and move on — never stall, never pressure, never re-ask.
- NEVER ask for a password, an access token, a verification code, or any credential of any kind. Right at the start, proactively warn the user: "Please never share your password, any codes, or secret tokens with me — I will never ask for them, and you should never paste them here."
- Use zero jargon. Explain technical words in plain language every time: a "repository" is "a folder that holds your project"; to "fork" means "make your own copy"; "commit" means "save your changes". Keep sentences short and give exactly one clear action at a time. Be warm, encouraging, and never dismissive.

ABOUT THE PROJECT (use these facts exactly, do not change them)
- The project is "nfc-card", a single-page static digital business card, at https://github.com/HairuoLiu/nfc-card.
- It is plain HTML/CSS/JavaScript with no build step. The ONLY file to edit is config.js, which controls all the text, the links, and the theme color. index.html is the page itself and should NOT be edited.
- Publishing uses GitHub Pages. The final public link looks like https://<username>.github.io/<repo>/ (a project page) or https://<username>.github.io/ (a personal home page).
- At the bottom of the card is a row of social icons. However many social links you fill in, that many icons appear; anything left blank stays hidden, and the visible icons evenly share the width of the bottom bar. The user can absolutely provide just 2 links — never force them to fill 4.
- This card is for an international audience. Stick to globally available platforms (X, LinkedIn, Instagram, GitHub, or similar) and never suggest regional chat apps.

INFORMATION TO GATHER (ask and confirm each one individually)
Required: full name; a one-line title (e.g. "Designer"); a 1–2 line short bio; an avatar image (ask how they want to provide it, or tell them they can add it later); their GitHub username; the repository name they want; whether they already have a GitHub account; their X link.
Optional — still ask one by one, and default to skip if declined: email; phone — clearly say this is NOT shown publicly by default; theme color.
Social links: ask ONE AT A TIME — "X?" then "LinkedIn?" then "Instagram?" then "GitHub?" then "any other?" — and explicitly tell them: "Fill in as many as you like; the card shows only the ones you fill in. Two is completely fine." Confirm each answer before moving to the next.
Keep a short, friendly summary of everything confirmed, show it back to the user, and wait for their OK before any deployment begins.

DEPLOYMENT — STEP BY STEP (one step per message; wait for "done" / "好了" each time)
After the summary is confirmed, guide them through these steps. For EVERY step: give one clear action, describe "what you should see now" so they can tell it worked, then STOP and wait for the user to reply "done" or "好了" before continuing. Never combine steps or skip ahead.
1. Sign up or log in at github.com (help them create an account if they need one).
2. Open https://github.com/HairuoLiu/nfc-card and click "Fork" (make your own copy); the Fork button is at the top-right of the page. Use the repository name we confirmed.
3. Decide together: a project page (link ends with /<repo>/) or a personal page (https://<username>.github.io/). Explain simply and let them pick; for the personal page the repository must be named exactly <username>.github.io.
4. In the new repository, go to Settings → Pages; set Source / branch = main and directory = /(root), then save.
5. On the repository page, open config.js and click the pencil (edit) icon. Fill in ONLY the information we confirmed. You MUST click the green "Commit changes" button to save, or nothing changes.
6. Wait 1–2 minutes.
7. Open the public link and verify the card shows up correctly.

TROUBLESHOOTING CHECKLIST (offer the relevant part whenever the user gets stuck; always give "try this first, then this" concrete actions, never just "check your settings")
- No GitHub account: first sign up at github.com with an email, then verify that email, then come back to the Fork step.
- Can't find the Fork button: first look at the very top-right of the repository page; if it is not there, make sure you are logged in, then reload the page.
- Wrong repository name or capitalization: first compare the name in the URL bar with the link you are opening; then rename the repository in Settings if it differs, and re-open the link with the exact same letters and case.
- Pages Source / branch / directory wrong: first confirm branch = main and folder = /(root); then re-save, wait 1–2 minutes, and open the link again.
- Saved nothing / no change: first confirm you actually clicked the green "Commit changes" button; then reload config.js to see whether your text is still there; if it is not, edit again and commit.
- Edited the wrong file: first undo any changes made to index.html; then open config.js instead and make the edits there.
- 404 on the link: first check that the repository name and the link match exactly; then confirm Pages is enabled and wait 1–2 minutes; then open the link in a private/incognito window to rule out cache.
- Changes not visible: first do a hard refresh (Ctrl+Shift+R on Windows, Cmd+Shift+R on Mac); then wait 1–2 minutes; then try a private window.
- Phone layout: open the link on your phone; if anything looks cramped, tell me and we will shorten the bio or reduce the number of social icons.
- Custom domain: optional — mention only briefly if the user asks, and never push it.

FINISH
When the card loads correctly, clearly hand the user their shareable public link, congratulate them warmly, and suggest easy next steps (swap the avatar, add or remove a social link, try a new theme color). Never finish the conversation until they have a working link they can actually show to someone.
```

> The AI will **ask you for every piece of information first and confirm each one**, then guide you step by step — fork, GitHub Pages, `config.js` — until you have a public link you can share. It never asks for passwords or tokens. Prefer doing it yourself? Keep reading.

---

## 🚀 Two Ways to Use (pick one)

### Way A: Visual Editor (⭐ Recommended, no code at all)

1. **Copy this repo into your account**: click **`Fork`** at the top-right of this page (see "Deploy" below for details).
2. Open **`editor.html`** in the repo (or visit `your-url/editor.html` after deploy).
3. Fill the form: name, title, bio, social links, colors… **live preview on the right**.
4. Click **"Generate config.js"** → click **"Download config.js"**.
5. **Upload the downloaded file to your repo**: in your forked repo, click `Add file → Upload files`, drag the downloaded `config.js` in, then click **`Commit changes`**. (Or replace `config.js` locally and push with git, if you prefer.)

> No need to read any code — just copy/paste and click buttons.

### Way B: Edit `config.js` directly (for fine control)

1. After forking, open **`config.js`** in GitHub's web editor (click the pencil icon ✏️).
2. **Only change the text and links** (every field has Chinese + English comments).
3. Click **`Commit changes`**, refresh the page — done.

> 🛠️ **Developers**: the full `config.js` schema, rendering behavior, and how to add new platforms are documented in [README.dev.md](./README.dev.md).

---

## 📦 Deploy to GitHub Pages (≈ 1 minute, free & permanent)

> Same steps whether you **Fork** or use **"Use this template"**.

1. **Copy the repo**
   - Click **`Fork`** (top-right) to copy into your account; or
   - Click **`Use this template` → `Create a new repository`** (cleaner, no commit history — recommended).
2. **Edit content**
   - Update `config.js` using Way A / B above (upload your `avatar.png` if you want a local image).
3. **Enable Pages**
   - Go to **your** repo → `Settings` → `Pages` → set `Branch` to **`main`** → click **`Save`**.
4. **Wait ≈ 1 minute**
   - GitHub gives you a free permanent URL:
     ```
     https://your-username.github.io/repo-name/
     ```
5. **Write to an NFC chip**
   - Get an **NTAG213 / NTAG215** sticker or card (a few cents each — NTAG215 is the most reliable and holds a URL easily).
   - Install **NFC Tools** (free, iOS / Android) → open the app → `Write` → `Add a record` → `URL` → paste your link → tap `Write` and hold your phone against the chip.
   - Done: tapping any phone against the chip now opens your card automatically.

> ⚠️ **Important**: After forking, you must enable Pages yourself (once) — GitHub does not inherit the original repo's Pages setting automatically. Same as step 3 above — 1 minute.

> 💡 **Custom domain**: Want your own domain? In `Settings → Pages → Custom domain` enter it, then add a `CNAME` record in your DNS.

---

## 📲 Use It Like an App on Your Phone (PWA)

Your card is an installable web app — no App Store, no review, works on any phone:

1. Open your card URL in **Safari** (iPhone) or **Chrome** (Android).
2. **iPhone**: tap `Share → Add to Home Screen` → `Add`.
   **Android**: browser menu → `Install app` / `Add to Home screen`.
3. Done — a real app icon (generated from `avatar.png`) appears on the home screen. Tapping it opens your card **fullscreen with no browser bar**, exactly like a native app.

> 🖼️ The home-screen icon comes from `icon-192.png` / `icon-512.png` / `icon-maskable-512.png` in the repo. If you replace your avatar, replace those files with your new photo too (any square image, keep the same filenames), then remove and re-add the home-screen icon — iOS caches icons.

### 📤 Share it in every way

| Situation | What to tap |
|---|---|
| Someone nearby, any phone | Have them **tap your NFC tag** (see Deploy step 5) — card opens instantly |
| AirDrop to a nearby iPhone / Mac | **Add me** → pick AirDrop → they receive a `.vcf` and save it to contacts directly |
| Chat apps (WhatsApp / iMessage / SMS…) | **Share Card**, or the `.vcf` file as an attachment |
| Old phone / desktop / no NFC | Tap the **QR button** 🎛️ on the card and let them scan |

---

## 🛠️ Customization (all in `config.js`)

| What you want to change | Field | Example |
|---|---|---|
| Name | `name` | `"John Doe"` |
| One-line title | `title` | `"Product Manager"` |
| Bio (multi-line) | `bio` | separate segments with `\|`: `"A \| B \| C"` |
| Avatar | `avatar.type` + `avatar.imageUrl` | `type:"image"` + image URL |
| Colors | `theme` | two background colors + `accent` |
| Phone / Email / Org | `contact` | see notes below |
| Social buttons | `socials` | copy a `{...}` line to add/remove |
| Show phone/email in footer | `footer.showPhone` / `footer.showEmail` | `true` / `false` |

### 🔗 X (Twitter) button
In the `socials` array, add a line with `platform: "x"` and your profile URL:

```js
{ platform: "x", url: "https://x.com/your-handle", label: "X" }
```

`twitter` is kept as an alias — both use the same X icon.

> **How many icons show up?** Only the links you actually fill in appear. Leave a line out, or set `url: "#"`, and it simply won't render — the remaining icons **evenly share the width** of the bottom row. Two links is perfectly fine; zero hides the row entirely.

### 🖼️ Avatar
Two options:
- **Local image**: name your photo `avatar.png`, upload it to the repo, set `avatar.imageUrl` to `"./avatar.png"`.
- **External URL**: set `avatar.imageUrl` to any image URL.
- No image? Set `avatar.type` to `"text"` to show a letter-logo with your initials (default `HL`).

### ➕ Add more platform buttons
Copy a line in `socials`. Valid `platform` values (icons & brand colors built-in):
`x` · `linkedin` · `instagram` · `facebook` · `twitter` · `github` · `youtube` · `mail` · `phone` · `website`

Example — add GitHub:
```js
{ platform: "github", url: "https://github.com/your-username", label: "GitHub" }
```

### 🎨 Colors
Three values in `theme`:
- `gradientStart` / `gradientEnd`: background gradient start/end (set both equal for a solid color)
- `accent`: primary button / highlight color

Example — blue/white: `gradientStart:"#0a2540"`, `gradientEnd:"#1e3a5f"`, `accent:"#4da3ff"`.

---

## ❓ FAQ

**Q: I edited `config.js` but the page didn't change?**
A: GitHub Pages takes ~1 minute to rebuild. Hard-refresh (`Ctrl / Cmd + Shift + R`) to clear cache.

**Q: After forking, does my link still point to the author's site?**
A: No. Each repo's Pages is independent: `your-username.github.io/repo-name/`.

**Q: The share preview image on iMessage / Telegram / Slack is wrong?**
A: Share previews use the **static** `og:` tags at the top of `index.html` (social crawlers don't run JS). Before deploying, change `og:image` / `og:title` / `og:description` in `index.html` to your real info. **This step is optional and skippable** — it only affects the link preview card, not the page itself.

**Q: I can't code at all — can I use this?**
A: Yes. Use the `editor.html` visual editor: fill out the form → download → replace file. Three steps. Or copy the AI prompt at the top of this README.

**Q: Avatar not showing?**
A: Check `avatar.type` is `"image"` and `imageUrl` is publicly reachable (a GitHub image URL looks like `https://your-username.github.io/repo-name/avatar.png`). Local images must be committed and pushed to the repo.

**Q: Commercial use / change the logo / remove the author's info?**
A: Yes. MIT License — modify, use commercially, redistribute freely, just keep the license notice.

**Q: Auto dark mode?**
A: Currently a fixed theme controlled by `theme`. For system-adaptive dark mode, open an Issue or add a `prefers-color-scheme` media query in `index.html`.

**Q: How do I send my card through AirDrop?**
A: Tap **Add me** on the card — the share sheet opens with AirDrop as an option. The other side receives a `.vcf` file and saves it straight into contacts. (Unsupported browsers fall back to downloading the file.)

**Q: Changed my avatar but the home-screen icon is still the old photo?**
A: The icon comes from the `icon-*.png` files, not `avatar.png` directly. Replace them with your new photo (same filenames), then remove and re-add the home-screen icon — iOS caches icons aggressively.

**Q: The QR button shows nothing?**
A: The QR library loads from a CDN — make sure the phone is online. If the CDN is blocked, the button falls back to copying your link automatically.

**Q: I only have 2 social links — will the row look empty?**
A: No. Only filled-in links render, and the visible icons evenly share the row width. Delete (or blank out) any line you don't need.

---

## 🧩 File Structure

```
nfc-card/
├─ index.html           # Page body (usually no need to edit)
├─ config.js            # ⭐ The ONLY file you edit (all content lives here)
├─ editor.html          # Visual editor (generates config.js, zero code)
├─ avatar.png           # Your avatar (optional, external URL also works)
├─ manifest.json        # PWA manifest (name / icons / theme color)
├─ icon-192.png         # PWA + Apple touch icon (generated from avatar.png)
├─ icon-512.png         # PWA icon 512px
├─ icon-maskable-512.png# PWA maskable icon (Android adaptive icons)
├─ README.md            # English documentation (this file)
├─ README.zh-CN.md      # 中文说明 (Chinese documentation)
├─ README.dev.md        # Developer / design guide (technical schema)
├─ AGENT.md             # Instructions for AI agents customizing this repo
└─ LICENSE              # MIT License
```

> 💡 Hacking? `index.html` reads `window.CARD_CONFIG`. Even if `config.js` is missing, a fallback default keeps the page from going blank.

---

## 📄 License

[MIT](./LICENSE) — free to use, modify, and redistribute. Fork it and share with more people 🚀

If this template helped you, a ⭐ Star is the best support for the author!
