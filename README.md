# 🪪 Digital Card · 电子名片 / NFC 落地页模板

一个**单文件、零配置、移动端优先**的个人电子名片。扫码（NFC）即开，适配 iOS / Android，毛玻璃风格，黄+黑专业配色。

> 你唯一要做的：改一个文件，或打开可视化编辑器填表 —— 不用会写代码。

---

## ✨ 特性

- 📱 **移动端优先**：完美适配手机，刘海屏安全区已处理，加载有淡入动画。
- 🪟 **毛玻璃卡片**：半透明 + 模糊背景，高级感拉满。
- 🖼️ **头像 / 姓名 / 简介**：简介用 `|` 分隔，手机上自动逐行显示。
- 🔗 **社交按钮**：LinkedIn / WeChat / Instagram / Facebook（内置十种品牌图标与配色，可增删）。
- 💾 **一键保存通讯录**：生成 `.vcf`，对方一键存入手机通讯录。
- 📤 **分享 / 复制链接**：调用系统分享，不支持时自动复制链接。
- 🟡 **微信特殊处理**：点击弹窗展示二维码，或复制微信号。
- 🎨 **可视化编辑器**：`editor.html` 填表即生成配置，零代码基础可用。

---

## 🚀 三种使用方式（任选其一）

### 方式 A：可视化编辑器（最推荐，完全不用碰代码）

1. 先 Fork 本仓库（见下方「部署」第 1 步）。
2. 打开仓库里的 **`editor.html`**（或部署后访问 `你的地址/editor.html`）。
3. 填表单 → 右侧实时预览 → 点 **「生成 config.js」** → **「下载 config.js」**。
4. 把下载的文件替换进仓库里的 `config.js`，提交即可。

### 方式 B：直接改 `config.js`（适合想微调的人）

1. Fork 后，打开仓库里的 **`config.js`**。
2. 只改里面的文字和链接（每一项都有中文注释）。
3. 提交（Commit）。刷新页面就生效。

### 方式 C：纯 Fork 然后改一行

连编辑器都不想开？Fork 后只改 `config.js` 里 `name` / `title` / `bio` / 各 `url` 就能上线。

---

## 📦 部署到 GitHub Pages（约 1 分钟）

> 不管是 Fork 还是「Use this template」，部署流程都一样。

1. **Fork / 复制仓库**：右上角 `Fork`（或点 `Use this template` → `Create a new repository`）。
2. **改内容**：用上面的方式 A / B / C 改好 `config.js`（和你的 `avatar.png`）。
3. **开启网页**：进你自己的仓库 → `Settings` → `Pages` → `Branch` 选 **`main`** → `Save`。
4. **等约 1 分钟**：GitHub 会给你一个免费永久链接：
   ```
   https://你的用户名.github.io/仓库名/
   ```
5. **写入 NFC**：把这个链接用 NFC Tools 等 App 烧录进芯片，手机一贴即开。

> ⚠️ **注意**：Fork 出来的仓库，**Pages 需要你自己重新开启一次**（GitHub 不会自动继承原仓库的 Pages 设置）。步骤同上第 3 步。

---

## 🛠️ 自定义清单（改 `config.js`）

| 想改什么 | 改哪个字段 |
|---|---|
| 姓名 | `name` |
| 头衔 | `title` |
| 简介（多行） | `bio`，用 `\|` 分隔每段 |
| 头像 | `avatar.type`(`image`/`text`) + `avatar.imageUrl` / `avatar.text` |
| 配色 | `theme`（背景两色 + 强调色 `accent`） |
| 电话 / 邮箱 / 公司 | `contact` |
| 社交按钮 | `socials`（增删一行 `{...}` 即可） |
| 底部显示电话/邮箱 | `footer.showPhone` / `footer.showEmail` |

**微信按钮**：在 `socials` 里 `platform:"wechat"` 那行填 `wechatId`（微信号）和 `qrImage`（二维码图片地址）。填了就弹二维码 + 复制微信号。

**头像图片**：把你的头像命名为 `avatar.png` 上传进仓库，或把 `imageUrl` 改成任意图片直链。

**添加更多平台**：`socials` 里复制一行，`platform` 可选 `twitter` / `github` / `youtube` / `mail` / `phone` / `website`（图标和品牌色已内置）。

---

## ❓ 常见问题 FAQ

**Q：我改了 `config.js` 但页面没变？**
A：GitHub Pages 约 1 分钟才重新构建；刷新前可强制刷新（Ctrl/Cmd+Shift+R）。

**Q：Fork 之后链接还是原作者的？**
A：不会。每个仓库的 Pages 是独立的，你的链接是 `你的用户名.github.io/仓库名/`。

**Q：微信里分享预览图是占位/不对？**
A：分享预览靠 `<head>` 里的静态 `og:` 标签（微信/Telegram 爬虫不执行 JS）。部署前把 `index.html` 顶部的 `og:image` 等改成你的真实信息即可。

**Q：不会写代码，能用吗？**
A：能。直接用 `editor.html` 可视化编辑器，填表下载配置就行。

**Q：能商用 / 改 logo 吗？**
A：可以，MIT License，随意改、随意用，保留版权声明即可。

---

## 🧩 文件结构

```
nfc-card/
├─ index.html     # 页面主体（一般无需修改）
├─ config.js      # ⭐ 唯一要改的配置文件
├─ editor.html    # 可视化编辑器（零代码生成 config.js）
├─ avatar.png     # 你的头像（可选，也可用外链）
└─ README.md      # 本说明
```

---

## 📄 License

MIT —— 自由使用、修改、再分发。欢迎 Fork 并分享给更多人 🚀
