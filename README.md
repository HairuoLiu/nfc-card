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
| 🔗 Social buttons | Built-in LinkedIn / WeChat / Instagram / Facebook + 6 more brand icons & colors, add/remove freely |
| 💾 Save to contacts | Generates a `.vcf` file so others can save your contact with one tap |
| 📤 Share / Copy link | Uses the native share sheet, falls back to "copy link + toast" |
| 🟡 WeChat handling | Tapping WeChat shows a QR-code popup, or copies the WeChat ID |
| 🎨 Visual editor | `editor.html` generates the config for you — **zero coding needed** |
| 🌈 Custom colors | Change 3 color values to re-skin, no CSS required |
| 📲 Add to Home Screen | Installable PWA — "Add to Home Screen" in Safari and it runs fullscreen like a native app |
| 📤 Add me | One tap sends your `.vcf` through the share sheet (AirDrop / WhatsApp / email…) — the other side saves it straight to contacts |
| 🔳 QR code | Built-in QR button for phones and situations without NFC |

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
| Chat apps (WeChat / WhatsApp / SMS…) | **Share Card**, or the `.vcf` file as an attachment |
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

### 🟡 WeChat button
In the `socials` array, the line with `platform: "wechat"` accepts two fields:
- `wechatId`: your WeChat ID (shows a "copy WeChat ID" button)
- `qrImage`: URL of your WeChat QR-code image (shows a QR popup)

Fill both for the safest result; one is enough.

### 🖼️ Avatar
Two options:
- **Local image**: name your photo `avatar.png`, upload it to the repo, set `avatar.imageUrl` to `"./avatar.png"`.
- **External URL**: set `avatar.imageUrl` to any image URL.
- No image? Set `avatar.type` to `"text"` to show a letter-logo with your initials (default `HL`).

### ➕ Add more platform buttons
Copy a line in `socials`. Valid `platform` values (icons & brand colors built-in):
`linkedin` · `wechat` · `instagram` · `facebook` · `twitter` · `github` · `youtube` · `mail` · `phone` · `website`

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

**Q: The share preview image on WeChat / Telegram is wrong?**
A: Share previews use the **static** `og:` tags at the top of `index.html` (social crawlers don't run JS). Before deploying, change `og:image` / `og:title` / `og:description` in `index.html` to your real info. **This step is optional and skippable** — it only affects the link preview card, not the page itself.

**Q: I can't code at all — can I use this?**
A: Yes. Use the `editor.html` visual editor: fill out the form → download → replace file. Three steps.

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
