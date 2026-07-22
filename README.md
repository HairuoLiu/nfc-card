# Hairuo Liu · 个人电子名片 (Digital Card)

极简单文件电子名片 / NFC 落地页,部署在 GitHub Pages,手机扫 NFC 即可打开。

- **当前版本**: Prototype v1
- **线上地址**: https://HairuoLiu.github.io/nfc-card/
- **技术栈**: 纯 HTML5 + CSS3 + Vanilla JS,零构建,单文件 `index.html`。

---

## 如何测试 (Test Checklist)

1. **电脑浏览器**: 直接打开线上地址,确认姓名、头像(当前为 HL 占位)、社交按钮、电话、分享按钮正常显示。
2. **手机浏览器**: 把链接发到手机微信/备忘录,点击打开,验证:
   - 页面在 iOS / Android 上居中、毛玻璃效果、安全区适配正常。
   - 点击 **保存到通讯录** → 下载 `.vcf`,打开后能把电话/姓名加入手机通讯录。
   - 点击 **LinkedIn / Instagram / Facebook** → 跳转到对应主页(新标签)。
   - 点击 **微信** → 弹出二维码弹窗(目前为占位,待补真实二维码)。
   - 点击 **分享此名片** → 调起系统分享;不支持时自动复制链接并 Toast 提示。
3. **NFC 测试**: 把线上地址写入 NFC 芯片(用 NFC Tools 等 App 写 URL),手机贴近应自动弹出打开链接。

---

## 如何迭代 (v2 / v3 路线图)

只改 `index.html` 顶部 `CARD_CONFIG` 对象,改完 `git push` 即生效(约 1 分钟 Pages 自动更新)。

- **v1 (当前)**: 黄+黑主题、LinkedIn/Instagram/Facebook、电话 6148868181、文字 Logo 占位。
- **v2 (待做)**:
  - 替换 LinkedIn 头像(把直链贴到 `avatar.imageUrl`,`avatar.type` 改 `"image"`)。
  - 补全 `title` / `bio` / `email` / `organization`。
  - 补微信: 填 `wechat.qrImage`(二维码图)与 `wechat.wechatId`。
- **v3 (待做)**:
  - 替换 `og:image` 等静态分享标签,优化微信/Telegram 分享预览。
  - 可选: 增加深色/浅色切换、背景动效、更多社交平台。

> ⚠️ 注意: `<head>` 里的 OG 分享标签是静态的(爬虫不执行 JS),部署前请手动改成真实信息。

---

## 本地预览

```bash
cd nfc-card
python3 -m http.server 8000
# 浏览器打开 http://localhost:8000
```

复制 `index.html` 与图片资源到仓库根目录即可,无需任何打包工具。
