# 🪪 电子名片 / NFC 落地页模板 · Digital Card（中文）

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![Deploy: GitHub Pages](https://img.shields.io/badge/Deploy-GitHub%20Pages-blue)](https://pages.github.com/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)]()

[English](./README.md) · **简体中文**

> 一个**单文件、零配置、移动端优先**的个人电子名片。扫码（NFC）即开，完美适配 iOS / Android，毛玻璃风格，支持自定义配色。

你唯一要做的：**改一个配置文件，或打开可视化编辑器填表 —— 不需要会写代码。**

- 🌐 效果预览（作者示例）：https://hairuoliu.github.io/nfc-card/
- 🛠️ 开发者 / 设计文档：[README.dev.md](./README.dev.md)（暂为英文）
- 🤖 给 AI 看的改稿说明：[AGENT.md](./AGENT.md)（暂为英文，AI 可直接阅读）

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
| 📲 添加到主屏幕 | 可安装 PWA —— Safari「添加到主屏幕」后像原生 App 一样全屏运行 |
| 📤 发我名片 | 一键把 `.vcf` 名片文件通过分享面板发出（AirDrop / 微信 / 邮件…），对方点开即存入通讯录 |
| 🔳 二维码 | 内置扫码按钮，没有 NFC 的手机和场合也能秒开 |

---

## 🚀 两种使用方式（任选其一，都很快）

### 方式 A：可视化编辑器（⭐ 最推荐，完全不用碰代码）

1. **把仓库复制到自己账号下**：点本页面右上角的 **`Fork`**（详见下方「部署」第 1 步）。
2. 打开仓库里的 **`editor.html`**（或部署上线后访问 `你的地址/editor.html`）。
3. 在表单里填：姓名、头衔、简介、社交链接、配色……**右侧实时预览**。
4. 点 **「生成 config.js」** → 点 **「下载 config.js」**。
5. **把下载的文件传回你的仓库**：在你 Fork 的仓库页面，点 `Add file → Upload files`，把下载的 `config.js` 拖进去，点 **`Commit changes`** 提交即可。（习惯命令行的话，也可以本地替换后 push。）

> 全程不用看懂任何代码，复制粘贴 + 点按钮就行。

### 方式 B：直接改 `config.js`（适合想精细微调的人）

1. Fork 后，在 GitHub 网页上打开 **`config.js`**（点铅笔 ✏️ 图标进入编辑）。
2. **只改里面的文字和链接**（每一项都有中文 + 英文注释）。
3. 点 **`Commit changes`** 提交，刷新页面就生效。

> 🛠️ **开发者**：完整的 `config.js` 字段结构、渲染逻辑、如何新增平台，见 [README.dev.md](./README.dev.md)。

---

## 📦 部署到 GitHub Pages（约 1 分钟，免费永久）

> 不管是 **Fork** 还是用 **「Use this template」**，部署流程完全一样。

1. **复制仓库**
   - 点右上角 **`Fork`**（在自己的账号下复制一份）；或
   - 点 **`Use this template` → `Create a new repository`**（更干净，不继承原作者的提交历史，推荐）。
2. **改内容**
   - 用上面的「方式 A / B」改好 `config.js`（需要换头像就上传你的 `avatar.png`）。
3. **开启网页**
   - 进入你**自己的**仓库 → `Settings` → `Pages` → `Branch` 选 **`main`** → 点 **`Save`**。
4. **等待约 1 分钟**
   - GitHub 会给你一个免费永久链接：
     ```
     https://你的用户名.github.io/仓库名/
     ```
5. **写入 NFC 芯片**
   - 买一张 **NTAG213 / NTAG215** 贴纸卡或白卡（几毛钱一张，NTAG215 最稳、容量轻松放下一个链接）。
   - 装上 **NFC Tools**（iOS / Android 都免费）→ 打开 App → `写入（Write）` → `添加记录` → `URL` → 粘贴你的链接 → 点 `写入`，把手机贴在芯片上即可。
   - 完成：任何手机一碰芯片，就会自动打开你的名片。

> ⚠️ **重要**：Fork 出来的仓库，**Pages 需要你自己重新开启一次**（GitHub 不会自动继承原仓库的 Pages 设置）。步骤同上第 3 步，1 分钟搞定。

> 💡 **自定义域名**：想用自己域名？在 `Settings → Pages → Custom domain` 填你的域名，再去 DNS 加一条 `CNAME` 记录即可。

---

## 📲 装到手机上，像 App 一样用（PWA）

你的名片是一个可安装的网页应用 —— 不用上架 App Store、不用审核，任何手机都行：

1. 用 **Safari**（iPhone）或 **Chrome**（Android）打开你的名片网址。
2. **iPhone**：点 `分享 → 添加到主屏幕` → `添加`。
   **Android**：浏览器菜单 → `安装应用` / `添加到主屏幕`。
3. 完成 —— 主屏幕出现一个真正的 App 图标（由 `avatar.png` 生成），点开即**全屏运行、没有浏览器地址栏**，和原生 App 体验一致。

> 🖼️ 主屏幕图标来自仓库里的 `icon-192.png` / `icon-512.png` / `icon-maskable-512.png`。换了头像的话，把这几个文件也换成你的新照片（任意方图、保持文件名不变），然后删掉主屏幕图标重新添加一次 —— iOS 会缓存图标。

### 📤 各种场景怎么分享

| 场景 | 用哪个功能 |
|---|---|
| 对方就在旁边，任意手机 | 让对方**碰你的 NFC 贴片**（见「部署」第 5 步）—— 名片秒开 |
| 隔空投递给附近的 iPhone / Mac | 点**发我名片** → 选 AirDrop → 对方收到 `.vcf` 直接存入通讯录 |
| 聊天软件（微信 / WhatsApp / 短信…） | **分享名片**，或把**名片文件**当附件发过去 |
| 老手机 / 电脑 / 没有 NFC | 点名片上的**二维码按钮** 🎛️ 让对方扫一下 |

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
A：分享预览靠 `index.html` 顶部的**静态** `og:` 标签（社交平台爬虫不执行 JS）。部署前把 `index.html` 里的 `og:image` / `og:title` / `og:description` 改成你的真实信息即可。**这一步可以跳过**——只影响分享出来的预览卡片，不影响名片页面本身。

**Q：完全不会写代码，能用吗？**
A：能。直接用 `editor.html` 可视化编辑器，填表 → 下载 → 替换文件，三步搞定。

**Q：头像不显示？**
A：检查 `avatar.type` 是否为 `"image"` 且 `imageUrl` 地址可公开访问（GitHub 图片地址通常是 `https://你的用户名.github.io/仓库名/avatar.png`）。本地图片需先上传到仓库并推送。

**Q：能商用 / 改 logo / 去掉我的信息吗？**
A：可以。基于 MIT License，随意修改、商用、再分发，只需保留版权声明即可。

**Q：支持深色模式自动切换吗？**
A：当前为固定主题（由 `theme` 控制）。如需系统自适应深色，可在 Issue 里提需求，或自行在 `index.html` 加 `prefers-color-scheme` 媒体查询。

**Q：怎么用 AirDrop 把名片发给别人？**
A：点名片上的**发我名片** —— 系统分享面板里就有 AirDrop。对方收到 `.vcf` 文件，点开直接存入通讯录。（不支持的浏览器会自动回退为下载文件。）

**Q：换了头像，主屏幕图标还是旧照片？**
A：图标来自 `icon-*.png` 文件，不是直接读 `avatar.png`。把这几个文件换成新照片（保持文件名不变），然后删掉主屏幕图标重新添加一次 —— iOS 对图标缓存很顽固。

**Q：二维码按钮点开是空的？**
A：二维码库走 CDN 加载，请确认手机联网。若 CDN 不可达，按钮会自动回退为复制你的名片链接。

---

## 🧩 文件结构

```
nfc-card/
├─ index.html            # 页面主体（一般无需修改）
├─ config.js             # ⭐ 唯一需要改的配置文件（所有内容都在这里）
├─ editor.html           # 可视化编辑器（零代码生成 config.js）
├─ avatar.png            # 你的头像（可选，也可用外链）
├─ manifest.json         # PWA 清单（名称 / 图标 / 主题色）
├─ icon-192.png          # PWA + Apple 触屏图标（由 avatar.png 生成）
├─ icon-512.png          # PWA 图标 512px
├─ icon-maskable-512.png # PWA 遮罩图标（Android 自适应图标）
├─ README.md             # English documentation（英文说明）
├─ README.zh-CN.md       # 中文说明（本文件）
├─ README.dev.md         # 开发者 / 设计文档（技术字段与渲染逻辑）
├─ AGENT.md              # 给 AI 看的改稿说明（中文用户也可让 AI 直接改）
└─ LICENSE               # MIT License
```

> 💡 想二次开发？`index.html` 里的渲染逻辑读取 `window.CARD_CONFIG`，即使 `config.js` 缺失也有兜底默认配置，页面不会白屏。

---

## 📄 License

[MIT](./LICENSE) —— 自由使用、修改、再分发。欢迎 Fork 并分享给更多人 🚀

如果这个模板帮到你，点个 ⭐ Star 是对作者最好的支持！
