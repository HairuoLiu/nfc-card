# 🪪 Digital Card / NFC Landing Page Template

> A **single-file, zero-config, mobile-first** personal digital business card. Opens instantly when scanned (NFC), fully optimized for iOS / Android, with a glassmorphism style and customizable colors.

The only thing you do: **edit one config file, or fill a visual editor form — no coding required.**

- 🌐 Live demo (author's example): https://hairuoliu.github.io/nfc-card/
- 📝 中文说明：[README.md](./README.md)

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

---

## 🚀 Three Ways to Use (pick one)

### Way A: Visual Editor (⭐ Recommended, no code at all)

1. **Fork** this repo first (see "Deploy" step 1 below).
2. Open **`editor.html`** in the repo (or visit `your-url/editor.html` after deploy).
3. Fill the form: name, title, bio, social links, colors… **live preview on the right**.
4. Click **"Generate config.js"** → click **"Download config.js"**.
5. **Replace** the `config.js` in your repo with the downloaded file and commit.

> No need to read any code — just copy/paste and click buttons.

### Way B: Edit `config.js` directly (for fine control)

1. After forking, open **`config.js`**.
2. **Only change the text and links** (every field has Chinese + English comments).
3. Commit, refresh the page — done.

### Way C: Fork and edit a few lines (minimal)

Don't want the editor? After forking, just edit `name` / `title` / `bio` / the `url`s in `config.js`, commit, and you're live.

---

## 📦 Deploy to GitHub Pages (≈ 1 minute, free & permanent)

> Same steps whether you **Fork** or use **"Use this template"**.

1. **Copy the repo**
   - Click **`Fork`** (top-right) to copy into your account; or
   - Click **`Use this template` → `Create a new repository`** (cleaner, no commit history — recommended).
2. **Edit content**
   - Update `config.js` using Way A / B / C above (upload your `avatar.png` if you want a local image).
3. **Enable Pages**
   - Go to **your** repo → `Settings` → `Pages` → set `Branch` to **`main`** → click **`Save`**.
4. **Wait ≈ 1 minute**
   - GitHub gives you a free permanent URL:
     ```
     https://your-username.github.io/repo-name/
     ```
5. **Write to an NFC chip**
   - Use **NFC Tools** (iOS / Android) to "write" that URL onto an NTAG chip. Tap with a phone and it opens automatically.

> ⚠️ **Important**: A forked repo needs Pages **enabled once by yourself** (GitHub does not inherit the original repo's Pages setting). Same as step 3 above — 1 minute.

> 💡 **Custom domain**: Want your own domain? In `Settings → Pages → Custom domain` enter it, then add a `CNAME` record in your DNS.

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
- No image? Set `avatar.type` to `"text"` to show an initial-based logo (default `HL`).

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

**Q: After forking, is the link still the author's?**
A: No. Each repo's Pages is independent: `your-username.github.io/repo-name/`.

**Q: The share preview image on WeChat / Telegram is wrong?**
A: Share previews use the **static** `og:` tags at the top of `index.html` (social crawlers don't run JS). Before deploying, change `og:image` / `og:title` / `og:description` in `index.html` to your real info.

**Q: I can't code at all — can I use this?**
A: Yes. Use the `editor.html` visual editor: fill form → download → replace file. Three steps.

**Q: Avatar not showing?**
A: Check `avatar.type` is `"image"` and `imageUrl` is publicly reachable (a GitHub image URL looks like `https://your-username.github.io/repo-name/avatar.png`). Local images must be `git add`ed and pushed.

**Q: Commercial use / change the logo / remove the author's info?**
A: Yes. MIT License — modify, use commercially, redistribute freely, just keep the license notice.

**Q: Auto dark mode?**
A: Currently a fixed theme controlled by `theme`. For system-adaptive dark mode, open an Issue or add a `prefers-color-scheme` media query in `index.html`.

---

## 🧩 File Structure

```
nfc-card/
├─ index.html     # Page body (usually no need to edit)
├─ config.js      # ⭐ The ONLY file you edit (all content lives here)
├─ editor.html    # Visual editor (generates config.js, zero code)
├─ avatar.png     # Your avatar (optional, external URL also works)
├─ README.md      # Chinese documentation
└─ README_EN.md   # English documentation (this file)
```

> 💡 Hacking? `index.html` reads `window.CARD_CONFIG`. Even if `config.js` is missing, a fallback default keeps the page from going blank.

---

## 📄 License

[MIT](./LICENSE) — free to use, modify, and redistribute. Fork it and share with more people 🚀

If this template helped you, a ⭐ Star is the best support for the author!
