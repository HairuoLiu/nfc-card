# AGENT.md — For AI Coding Agents (Cursor, Codex, Claude Code, Copilot, WorkBuddy, etc.)

This document tells you exactly how to safely customize this repository when a user asks you to
change their name, avatar, bio, social links, colors, or contact info.

## What this repo is

A **zero-code, single-file digital business card / NFC landing page**. No build step, no framework.
It deploys as a static site (GitHub Pages or any static host).

Almost ALL user-facing content lives in ONE file: **`config.js`**, which exposes `window.CARD_CONFIG`.
`index.html` reads that object at runtime and renders the card. `editor.html` is an optional
visual editor that generates `config.js` for non-coders.

## GOLDEN RULE for AI agents

> To change the **name, title, bio, avatar, theme colors, contact info, or social links**,
> **EDIT ONLY `config.js`.**

- Do **NOT** rewrite `index.html` or `editor.html` unless the user explicitly asks for **new features**
  or **new platforms** beyond the built-in set.
- `config.js` is the single source of truth and is designed to be human-editable.
- Treat `index.html` as read-only application code. Editing it for content changes is wrong and risky.

## How to edit `config.js`

The file ends by assigning a single object to `window.CARD_CONFIG`. The object shape:

```js
window.CARD_CONFIG = {
  name:  "Hairuo Liu",                                       // <-- displayed name (top of card)
  title: "Ex-Amazon in Ads · AWS Certified ...",             // <-- one-line headline under name

  bio:   "Line one | Line two | Line three",                  // <-- use "|" to separate lines
                                                            //     each segment becomes its own line

  avatar: {                                                  // <-- avatar config
    type:     "image",        // "image" (uses a picture) OR "text" (uses a letter logo)
    imageUrl: "./avatar.png", // used when type:"image" — local file or external URL
    text:     "HL"            // used when type:"text" — the letter logo shown
  },

  theme: {                                                   // <-- colors (gradient + accent)
    gradientStart: "#0d0d0d", // background gradient start
    gradientEnd:   "#2a2300", // background gradient end
    accent:        "#FFB800"  // primary button / accent color
  },

  contact: {                                                 // <-- used to export a .vcf (Save Contact)
    firstName:   "Hairuo",
    lastName:    "Liu",
    organization:"",          // company / org (may be empty)
    title:       "",          // job title in vCard (may be empty)
    phone:       "6148868181",// phone (omit to hide)
    email:       "",          // email (omit to hide)
    website:     "https://...",
    address:     {}           // address object (may be empty {})
  },

  socials: [                                                 // <-- social buttons
    { platform: "linkedin",  url: "https://...", label: "LinkedIn"  },
    { platform: "wechat",    wechatId: "", qrImage: "", label: "WeChat" }, // special: see below
    { platform: "instagram", url: "https://...", label: "Instagram" }
    // add/remove entries by copying a {...} block
  ],

  footer: {
    showPhone:  false,        // show phone row at bottom (uses contact.phone)
    showEmail:  true,         // show email row at bottom (uses contact.email)
    shareText:  "Share this card"
  }
};
```

### Field → UI element map

| Field | UI element |
|-------|-----------|
| `name` | Big name heading |
| `title` | Subtitle under name |
| `bio` | Bio block (split by `|` into lines) |
| `avatar.type` / `avatar.imageUrl` / `avatar.text` | Avatar circle (image or letter logo) |
| `theme.gradientStart` / `theme.gradientEnd` / `theme.accent` | Page background gradient + button/accent color |
| `contact.*` | Data exported to the "Save Contact" `.vcf` file |
| `socials[]` | Social icon buttons |
| `footer.showPhone` / `footer.showEmail` / `footer.shareText` | Bottom contact rows + share button text |

### `bio` line convention
Use the pipe character `|` to separate lines, e.g. `"A | B | C"`. Each segment is trimmed and
rendered as its own line on the card.

### `socials[]` entries
- Normal platforms: `{ platform: "<id>", url: "<https url>", label: "<display>" }`.
- **WeChat is special:** use `{ platform: "wechat", wechatId: "<id>", qrImage: "<url or path>", label: "WeChat" }`.
  Do **NOT** use `url` for WeChat — use `wechatId` (copyable) and/or `qrImage` (QR shown in a modal).
  Either field may be empty (`""`).

## Avatar image handling

If the user provides an avatar image file:
1. Save it as **`avatar.png`** in the repo root, overwriting the existing placeholder; **or**
2. Update `avatar.imageUrl` to an external URL (e.g. `https://.../me.jpg`).
3. Set `avatar.type: "image"`.

If the user has no image and wants a letter logo, set `avatar.type: "text"` and put the initials
in `avatar.text` (e.g. `"HL"`).

## When to touch `index.html`

ONLY when the user wants a platform **beyond the built-in set**
`linkedin, wechat, instagram, facebook, twitter, github, youtube, mail, phone, website`.
In that case you must:
1. Add the platform to the `SOCIAL_META` object in `index.html` (an icon FontAwesome class + brand color).
2. Add a render branch for the new `platform` value if it needs special behavior (like WeChat's modal).

Otherwise — for any normal content/link/color change — **leave `index.html` alone.**

## Deployment after edits

- Commit your change to **`config.js`** (and `avatar.png` if replaced) and **push to `main`**.
- GitHub Pages rebuilds in ~1 minute.
- ⚠️ **REMIND THE USER:** if they **forked** this repo, they must enable Pages themselves once:
  go to **Settings → Pages → Source: branch `main` / (root)** and save. A fork does not inherit
  the original repo's Pages setting automatically.

## Validation

After making changes, verify:
1. `config.js` is **valid JavaScript** — no syntax errors, all strings quoted, all `{ }` and `[ ]`
   balanced, every entry comma-separated. (A broken `config.js` will make the card fall back to a
   default placeholder config and lose the user's content.)
2. The **live site loads** and shows the intended name/avatar/links/colors.

## See also

- [`README.dev.md`](./README.dev.md) — full technical schema / developer reference.
- [`README.md`](./README.md) — user guide for customizing the card.
