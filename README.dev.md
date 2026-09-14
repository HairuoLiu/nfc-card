# README.dev — nfc-card (Developer & Designer Guide)
### 开发与设计文档 · 数字名片 / NFC 落地页模板

> **中文摘要**：本文档说明 nfc-card 的整体架构（`index.html` 负责渲染 + `config.js` 是唯一数据源 + `editor.html` 可视化导出配置）、`CARD_CONFIG` 完整字段表、内置 10 个社交平台（`SOCIAL_META`）、vCard 生成与分享回退逻辑，以及 GitHub Pages 部署要点。**普通用户请看 [README.md](README.md)（英文）或 [README.zh-CN.md](README.zh-CN.md)（中文）**。

This document explains the **architecture, configuration schema, rendering behavior, and extension points** of the `nfc-card` template so developers and designers can understand, customize, or extend it. For end-user instructions, see [README.md](README.md); for AI agents, see [AGENT.md](AGENT.md).

The template is a **zero-config, single-file digital business card** that renders a polished landing page and is intended to be deployed on **GitHub Pages**. There is no build step, no framework, and no backend.

---

## 1. Architecture Overview

The repo is a static site composed of a presentational page, a single config file, a visual editor, and an optional local asset.

| File | Role | Edited by |
|------|------|-----------|
| `index.html` | Presentational layer. Vanilla HTML/CSS/JS. Reads `window.CARD_CONFIG` (from `config.js`) and renders the card. | ❌ Rarely |
| `config.js` | **Single source of truth.** All user-editable content lives here as `window.CARD_CONFIG = {...}`. | ✅ Always |
| `editor.html` | Zero-backend visual editor. Lets non-coders fill a form and **download/export** a `config.js`. Needs no server. | ❌ Tool only |
| `avatar.png` | Local avatar image referenced by `./avatar.png`. Replace to change the photo. | ✅ Optional |
| `manifest.json` | PWA manifest (name, icons, theme color). Static file — forkers should update `name`. | 🔧 Rarely |
| `icon-192.png` / `icon-512.png` / `icon-maskable-512.png` | PWA + Apple touch icons, square-cropped from `avatar.png` (maskable = avatar on theme-color background, 62% safe zone). Replace together with the avatar. | ✅ With avatar |

### Data flow

```
config.js  ──(defines window.CARD_CONFIG)──▶  index.html  ──▶  rendered card
   ▲                                              │
   └────────── editor.html exports ──────────────┘  (download config.js, replace in repo)
```

- `index.html` loads `config.js` via `<script src="config.js"></script>` **before** its own `<script>` block (`index.html:264`). This guarantees `window.CARD_CONFIG` exists when the page script runs.
- `index.html` falls back to a **minimal default config** if `config.js` is missing entirely (`index.html:274`): the card still renders without throwing.
- `editor.html` also reads `config.js` on load (`editor.html:8`) to **pre-fill** the form with the current card, then regenerates a clean `config.js` on export. It runs entirely in the browser (no fetch, no server).

---

## 2. CARD_CONFIG Schema

`window.CARD_CONFIG` is a plain object. Every user-facing field is listed below, grouped by purpose.

### 2.1 Top-level fields

| Field | Type | Meaning |
|-------|------|---------|
| `name` | string | Display name shown as the card heading. |
| `title` | string | One-line headline / core identity. Keep short; avoid duplicating `bio`. |
| `bio` | string | Personal intro. **Segments are `|`-delimited** and rendered each on its own line on mobile. |
| `avatar` | object | Avatar definition (see 2.2). |
| `theme` | object | Color tokens (see 2.3). |
| `contact` | object | Contact details used to build the vCard `.vcf` (see 2.4). |
| `socials` | array | List of social/platform buttons (see 2.5). |
| `footer` | object | Footer visibility toggles (see 2.6). |

### 2.2 `avatar` — `{ type, imageUrl, text }`

| Field | Type | Meaning |
|-------|------|---------|
| `type` | `"image"` \| `"text"` | Switch between a photo and a letter-logo fallback. |
| `imageUrl` | string | Image source. Either a **local** path like `./avatar.png` or an **external URL**. Used when `type === "image"`. |
| `text` | string | Letter-logo shown when `type === "text"` (e.g. `"HL"`). |

### 2.3 `theme` — `{ gradientStart, gradientEnd, accent }`

All values are **hex colors** (e.g. `"#0d0d0d"`).

| Field | Type | Meaning |
|-------|------|---------|
| `gradientStart` | string (hex) | Background gradient start color. |
| `gradientEnd` | string (hex) | Background gradient end color. |
| `accent` | string (hex) | Primary button / accent color (also drives avatar letter-logo bg and social hover). |

> The CSS `:root` tokens (`--gradient-start`, `--gradient-end`, `--accent`) are overwritten at runtime by `applyTheme()` (`index.html:343`).

### 2.4 `contact` — used to build the vCard (.vcf)

| Field | Type | Meaning |
|-------|------|---------|
| `firstName` | string | Given name (used in `N:` / `FN:` of vCard). |
| `lastName` | string | Family name. |
| `organization` | string | Company / org. Empty string is allowed. |
| `title` | string | Job title (written into the vCard `TITLE:`). |
| `phone` | string | Phone number (international format recommended, e.g. `+16148868181`). |
| `email` | string | Email address. |
| `website` | string | Website / URL. |
| `address` | object | Structured address: `{ street, city, region, zip, country }`. Empty `{}` is allowed. |

> These fields feed `generateVCF()` (`index.html:482`), which emits a `VERSION:3.0` vCard. Empty fields are omitted from the output.

### 2.5 `socials` — array of `{ platform, url, wechatId?, qrImage?, label? }`

Each entry is one button.

| Field | Type | Meaning |
|-------|------|---------|
| `platform` | string | Built-in key (see §3) that maps to an icon + brand color. |
| `url` | string | Destination URL (for non-WeChat platforms). Use `"#"` as placeholder. |
| `wechatId` | string *(optional)* | WeChat ID; shown in a modal with a "copy" button. |
| `qrImage` | string *(optional)* | QR-code image URL shown in the WeChat modal. |
| `label` | string | Human-readable name / aria-label for the button. |

### 2.6 `footer` — `{ showPhone, showEmail }`

| Field | Type | Meaning |
|-------|------|---------|
| `showPhone` | boolean | Whether to publicly display the phone row in the footer. (Phone is **always** included in the vCard regardless.) |
| `showEmail` | boolean | Whether to display the email row (only shown if `contact.email` is non-empty). |

> Share-button labels are built-in UI strings handled by the page's i18n (EN/中文) — they are not configurable via `footer`.

---

## 3. Built-in Social Platforms

Icons + brand colors are defined in `SOCIAL_META` inside `index.html` (`index.html:297`). The following platforms are built-in:

| Platform key | Icon class | Brand color |
|--------------|------------|-------------|
| `linkedin` | `fa-brands fa-linkedin-in` | `#0A66C2` |
| `wechat` | `fa-brands fa-weixin` | `#07C160` |
| `instagram` | `fa-brands fa-instagram` | `#E4405F` |
| `facebook` | `fa-brands fa-facebook-f` | `#1877F2` |
| `twitter` | `fa-brands fa-x-twitter` | `#111111` |
| `github` | `fa-brands fa-github` | `#181717` |
| `youtube` | `fa-brands fa-youtube` | `#FF0000` |
| `mail` | `fa-solid fa-envelope` | `#EA4335` |
| `phone` | `fa-solid fa-phone` | `#34A853` |
| `website` | `fa-solid fa-globe` | `#5F6368` |

Unknown platforms fall back to a generic link icon (`fa-solid fa-link`) and gray `#888` (`index.html:390`).

### 3.1 Adding a NEW platform

Two edits are required — one in `config.js`, one in `index.html`:

**1) Add an entry to `config.js` `socials[]`:**

```js
// config.js
socials: [
  // ...existing...
  { platform: "tiktok", url: "https://www.tiktok.com/@yourhandle", label: "TikTok" }
]
```

**2) Add the icon + color to `SOCIAL_META` in `index.html`:**

```js
// index.html  — inside const SOCIAL_META = { ... }
tiktok: { icon: "fa-brands fa-tiktok", color: "#000000" },
```

**3) (Optional) Expose it in `editor.html`** so non-coders can pick it from the dropdown — add the key to `PLATFORMS` and `SOCIAL_ICONS`:

```js
// editor.html
const PLATFORMS = [..., "tiktok"];
const SOCIAL_ICONS = { ..., tiktok: "fa-brands fa-tiktok" };
```

> Icon classes come from **FontAwesome** (loaded via CDN). Confirm the exact class name in the FontAwesome icon list before adding.

---

## 4. Rendering Behavior

### 4.1 Load order & fallback
- `config.js` is loaded by `<script src="config.js">` **before** `index.html`'s inline script (`index.html:264`).
- `const CARD_CONFIG = window.CARD_CONFIG || { ...minimal defaults... }` (`index.html:274`). If `config.js` is absent/errors, the page still renders with placeholder content.
- `applyTheme()` overrides the CSS custom properties from `theme.*` (`index.html:343`).

### 4.2 Bio splitting
`bio` is split on `|`, each segment trimmed and rendered as its own `<span class="bio-line">` block (`index.html:364`). This makes multi-line intros readable on narrow mobile screens.

### 4.3 Avatar image vs text
- If `avatar.type === "image"` **and** `avatar.imageUrl` is set → an `<img>` is injected (`index.html:376`).
- Otherwise the `avatar.text` (or the first character of `name`) is shown as a letter-logo (`index.html:382`).

### 4.4 vCard (.vcf) generation
- Clicking **"Save Contact"** calls `downloadVCF()` (`index.html:503`), which builds a vCard string via `generateVCF()` (`index.html:482`) and triggers a file download (`<name>.vcf`).
- The vCard includes name, org, title, phone, email, website, and address as available.

### 4.5 Share
- `shareCard()` (`index.html:518`) first tries the native **`navigator.share`** API (best mobile UX).
- If unavailable or the user cancels, it **falls back to copying the page URL** to the clipboard via `copyText()` (`index.html:321`), with a `document.execCommand` fallback for non-HTTPS/local contexts.

### 4.6 WeChat tap behavior
- Tapping a `wechat` social button opens a modal (`openWechatModal`, `index.html:437`).
- The modal shows `qrImage` if provided, otherwise a placeholder prompting you to set `qrImage` (`index.html:445`).
- If `wechatId` is set, the modal shows the ID and a **"Copy ID"** button (`index.html:459`).
- Modal closes on overlay click, close button, or `Escape` (`index.html:475`).

### 4.7 Sharing & QR (footer action row)
The footer renders a three-button row (`renderFooter`):
1. **Share link** (`shareCard`) — `navigator.share` with the page URL; clipboard fallback.
2. **Send contact file** (`shareVCF`) — builds the vCard via `generateVCF()` and shares it as a **file** through the Web Share API Level 2 (`navigator.canShare({ files })`, supported by iOS Safari and Android Chrome). Falls back to `downloadVCF()` where file sharing is unavailable. This is what makes **AirDrop** work: the recipient receives the `.vcf` directly, no webpage visit needed.
3. **QR button** (`openQrModal`) — renders `location.href` as a QR code using `qrcodejs` (cdnjs CDN). If the CDN is unreachable, it falls back to copying the link with a toast.

### 4.8 PWA / Add to Home Screen
- `manifest.json` (static: `display: standalone`, theme `#0d0d0d`, three PNG icons) + `apple-touch-icon` link + iOS meta tags in `index.html` `<head>`.
- Safari → *Add to Home Screen* / Chrome → *Install app* yields a fullscreen standalone app; the icon files are square crops of `avatar.png` (`icon-maskable-512.png` places the avatar at 62% of the canvas on the theme background for Android adaptive icons).
- No service worker by design — the template stays single-file and zero-config; offline caching can be added later without breaking anything.

---

## 5. Customization

| Goal | How |
|------|-----|
| Change colors | Edit `theme.gradientStart`, `theme.gradientEnd`, `theme.accent` (hex) in `config.js`. |
| Change avatar | Replace `avatar.png` in the repo **or** set `avatar.imageUrl` to a local/external URL; set `avatar.type: "image"`. For a letter-logo, use `type: "text"` + `avatar.text`. |
| Toggle public phone | Set `footer.showPhone` (true/false). Phone always stays in the vCard. |
| Toggle public email | Set `footer.showEmail` (true/false); only shows if `contact.email` is non-empty. |
| Add/remove socials | Edit the `socials[]` array in `config.js` (see §3.1 for new platforms). |
| Change bio lines | Edit `bio` in `config.js`, separating lines with `|`. |
| Non-coder workflow | Open `editor.html`, fill the form, click **"生成 config.js"**, download, and replace `config.js` in the repo. |

> The OG/Twitter/Link-preview metadata in `index.html` `<head>` (`index.html:25`–`30`) is **static** — crawlers don't run JS. Update `title`, `description`, and `og:image` there for correct link previews (the script also best-effort updates `og:title`/`og:description` at runtime, `index.html:350`).

---

## 6. Deployment (GitHub Pages)

1. Push the repo contents to the **`main`** branch at the repository root (`index.html`, `config.js`, `editor.html`, `avatar.png`).
2. In the repo **Settings → Pages**, set **Source = Deploy from a branch**, **Branch = `main`**, folder **`/ (root)`**, then **Save**.
3. The first build takes roughly **~1 minute**. Subsequent pushes rebuild automatically.
4. **Forkers must enable Pages themselves** — GitHub does not auto-enable Pages for forks.
5. **Custom domain (optional):** configure it under Settings → Pages; otherwise the site is served from `https://<user>.github.io/<repo>/`.
6. **FontAwesome is loaded via CDN** (`cdnjs.cloudflare.com`, `index.html:33`). The page needs internet access for icons to appear; without it, buttons render but icons may be missing.

> No build step, bundler, or server is required. Any static host works the same way.

---

## 7. Performance & Compatibility Notes

- **Mobile-first**: the card is `max-width: 430px`, centered, and uses responsive units; the editor `editor.html` switches to a two-column layout at ≥760px.
- **Safe-area insets**: `viewport-fit=cover` plus `env(safe-area-inset-top/bottom)` padding so content clears notches and home indicators (`index.html:17`, `index.html:69`, `index.html:213`).
- **Glassmorphism**: achieved with `backdrop-filter: blur(22px) saturate(160%)` (with `-webkit-` prefix) on the card (`index.html:78`). Falls back gracefully where unsupported.
- **No build step**: pure static HTML/CSS/JS; deploy as-is.
- **Clipboard robustness**: `copyText()` prefers `navigator.clipboard` (secure context) and falls back to a hidden `<textarea>` + `execCommand` (`index.html:321`).
- **Accessibility**: social buttons carry `aria-label`s; the WeChat modal supports `role="dialog"`, `aria-modal`, and Escape-to-close.

---

## See also

- [README.md](README.md) — end-user guide (how to fill in and deploy your card).
- [AGENT.md](AGENT.md) — instructions for AI agents working on this repo.
