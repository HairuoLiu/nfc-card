# 🪪 电子名片 / NFC 落地页模板 · Digital Card

> 一个**单文件、零配置、移动端优先**的个人电子名片。扫码（NFC）即开，完美适配 iOS / Android，毛玻璃风格，支持自定义配色。

你唯一要做的：**改一个配置文件，或打开可视化编辑器填表 —— 不需要会写代码。**

- 🌐 效果预览（作者示例）：https://hairuoliu.github.io/nfc-card/
- 📝 英文说明：[README_EN.md](./README_EN.md)

---

## ✨ 特性

| 特性 | 说明 |
|---|---|
| 📱 移动端优先 | 完美适配手机屏幕，刘海屏 / 安全区已处理，加载有优雅的淡入动画 |
| 🪟 毛玻璃卡片 | 半透明 + 背景模糊，高级感拉满，也可切换为纯色 |
| 🖼️ 头像 / 姓名 / 简介 | 简介用 `\|` 分隔，手机上**自动逐行显示**，不再是一长串 |
| 🔗 社交按钮 | 内置 LinkedIn / WeChat / Instagram / Facebook 等十种品牌图标与配色，可自由增删 |
| 💾 一键保存通讯录 | 自动生成 `.vcf` 名片文件，对方一键存入手机通讯录 |
| 📤 分享 / 复制链接 | 自动调用系统分享面板，不支持时回退为“复制链接 + 提示” |
| 🟡 微信特殊处理 | 点击弹出二维码图片，或一键复制微信号（解决微信无法被外部调起的问题） |
| 🎨 可视化编辑器 | `editor.html` 填表即生成配置，**完全零代码基础可用** |
| 🌈 自由配色 | 改 3 个颜色值即可换肤，不写一行 CSS |

---

## 🚀 三种使用方式（任选其一，都很快）

### 方式 A：可视化编辑器（⭐ 最推荐，完全不用碰代码）

1. 先 **Fork** 本仓库（见下方「部署」第 1 步）。
2. 打开仓库里的 **`editor.html`**（或部署上线后访问 `你的地址/editor.html`）。
3. 在表单里填：姓名、头衔、简介、社交链接、配色……**右侧实时预览**。
4. 点 **「生成 config.js」** → 点 **「下载 config.js」**。
5. 把下载的文件**替换**进你仓库里的 `config.js`，提交（Commit）即可。

> 全程不用看懂任何代码，复制粘贴 + 点按钮就行。

### 方式 B：直接改 `config.js`（适合想精细微调的人）

1. Fork 后，打开仓库里的 **`config.js`**。
2. **只改里面的文字和链接**（每一项都有中文 + 英文注释）。
3. 提交（Commit），刷新页面就生效。

### 方式 C：纯 Fork 改几行（极简）

连编辑器都不想开？Fork 后只改 `config.js` 里 `name` / `title` / `bio` / 各 `url` 这几行，提交即可上线。

---

## 📦 部署到 GitHub Pages（约 1 分钟，免费永久）

> 不管是 **Fork** 还是用 **「Use this template」**，部署流程完全一样。

1. **复制仓库**
   - 点右上角 **`Fork`**（在自己的账号下复制一份）；或
   - 点 **`Use this template` → `Create a new repository`**（更干净，不继承我的提交历史，推荐）。
2. **改内容**
   - 用上面的「方式 A / B / C」改好 `config.js`（需要换头像就上传你的 `avatar.png`）。
3. **开启网页**
   - 进入你**自己的**仓库 → `Settings` → `Pages` → `Branch` 选 **`main`** → 点 **`Save`**。
4. **等待约 1 分钟**
   - GitHub 会给你一个免费永久链接：
     ```
     https://你的用户名.github.io/仓库名/
     ```
5. **写入 NFC 芯片**
   - 用 **NFC Tools**（iOS / Android 都有）把上面这个链接「写」进 NTAG 芯片，手机一贴即自动打开。

> ⚠️ **重要**：Fork 出来的仓库，**Pages 需要你自己重新开启一次**（GitHub 不会自动继承原仓库的 Pages 设置）。步骤同上第 3 步，1 分钟搞定。

> 💡 **自定义域名**：想用自己域名？在 `Settings → Pages → Custom domain` 填你的域名，再去 DNS 加一条 `CNAME` 记录即可。

---

## 🛠️ 自定义清单（全部在 `config.js` 里）

| 你想改什么 | 改哪个字段 | 示例 |
|---|---|---|
| 姓名 | `name` | `"张三"` |
| 一句话头衔 | `title` | `"产品经理 · 某厂"` |
| 简介（多行） | `bio` | 用 `\|` 分隔每段：`"A \| B \| C"` |
| 头像 | `avatar.type` + `avatar.imageUrl` | `type:"image"` + 图片地址 |
| 配色 | `theme` | 背景两色 + 强调色 `accent` |
| 电话 / 邮箱 / 公司 | `contact` | 见下方说明 |
| 社交按钮 | `socials` | 复制一行 `{...}` 即可增删 |
| 底部是否显示电话/邮箱 | `footer.showPhone` / `footer.showEmail` | `true` / `false` |

### 🟡 微信按钮怎么填
在 `socials` 数组里 `platform: "wechat"` 那一行，填两个字段：
- `wechatId`：你的微信号（填了就显示“复制微信号”按钮）
- `qrImage`：你的微信二维码图片地址（填了就弹二维码）

两个都填最稳；只填一个也能用。

### 🖼️ 头像怎么放
两种方式任选：
- **本地图片**：把你的头像命名为 `avatar.png` 上传进仓库，`avatar.imageUrl` 写 `"./avatar.png"`。
- **外部直链**：`avatar.imageUrl` 写任意图片网址（如 `https://.../me.jpg`）。
- 不想用图？把 `avatar.type` 改成 `"text"`，会显示首字母文字 Logo（默认 `HL`）。

### ➕ 添加更多平台按钮
`socials` 里复制一行，`platform` 可选值（图标和品牌色已内置）：
`linkedin` · `wechat` · `instagram` · `facebook` · `twitter` · `github` · `youtube` · `mail` · `phone` · `website`

例如加 GitHub：
```js
{ platform: "github", url: "https://github.com/你的用户名", label: "GitHub" }
```

### 🎨 配色怎么改
`theme` 里三个值：
- `gradientStart` / `gradientEnd`：背景渐变起止色（想纯色就设成同一个值）
- `accent`：主按钮 / 强调色

例如换成蓝白风：`gradientStart:"#0a2540"`、`gradientEnd:"#1e3a5f"`、`accent:"#4da3ff"`。

---

## ❓ 常见问题 FAQ

**Q：我改了 `config.js` 但页面没变？**
A：GitHub Pages 大约 1 分钟才重新构建完成。刷新前可强制刷新（`Ctrl / Cmd + Shift + R`）清缓存。

**Q：Fork 之后链接还是原作者的？**
A：不会。每个仓库的 Pages 是独立的，你的链接是 `你的用户名.github.io/仓库名/`，和原作者无关。

**Q：微信 / Telegram 里分享预览图是占位或不对？**
A：分享预览靠 `index.html` 顶部的**静态** `og:` 标签（社交平台爬虫不执行 JS）。部署前把 `index.html` 里的 `og:image` / `og:title` / `og:description` 改成你的真实信息即可。

**Q：完全不会写代码，能用吗？**
A：能。直接用 `editor.html` 可视化编辑器，填表 → 下载 → 替换文件，三步搞定。

**Q：头像不显示？**
A：检查 `avatar.type` 是否为 `"image"` 且 `imageUrl` 地址可公开访问（GitHub 图片地址通常是 `https://你的用户名.github.io/仓库名/avatar.png`）。本地图片需先 `git add` 并推送。

**Q：能商用 / 改 logo / 去掉我的信息吗？**
A：可以。基于 MIT License，随意修改、商用、再分发，只需保留版权声明即可。

**Q：支持深色模式自动切换吗？**
A：当前为固定主题（由 `theme` 控制）。如需系统自适应深色，可在 Issue 里提需求，或自行在 `index.html` 加 `prefers-color-scheme` 媒体查询。

---

## 🧩 文件结构

```
nfc-card/
├─ index.html     # 页面主体（一般无需修改）
├─ config.js      # ⭐ 唯一需要改的配置文件（所有内容都在这里）
├─ editor.html    # 可视化编辑器（零代码生成 config.js）
├─ avatar.png     # 你的头像（可选，也可用外链）
├─ README.md      # 中文说明（本文件）
└─ README_EN.md   # English documentation
```

> 💡 想二次开发？`index.html` 里的渲染逻辑读取 `window.CARD_CONFIG`，即使 `config.js` 缺失也有兜底默认配置，页面不会白屏。

---

## 📄 License

[MIT](./LICENSE) —— 自由使用、修改、再分发。欢迎 Fork 并分享给更多人 🚀

如果这个模板帮到你，点个 ⭐ Star 是对作者最好的支持！
