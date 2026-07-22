/* ============================================================================
   CARD_CONFIG  ·  唯一需要修改的配置文件 / The ONLY file you need to edit
   ----------------------------------------------------------------------------
   👉 小白友好的配置: 只改这个文件里的文字和链接,不用碰 index.html / CSS。
   👉 每一项都有中文(及英文)注释,改完保存即生效,刷新页面就能看到。
   👉 不会写代码也没关系: 你也可以用仓库里的 editor.html 可视化编辑器生成这里。

   字段速查 Field guide:
     name      -> 显示姓名
     title     -> 一句话头衔 (建议放最核心的身份,避免和 bio 重复)
     bio       -> 个人简介, 用竖线 "|" 分隔, 手机上会自动逐行显示
     avatar    -> 头像: type:"image" + imageUrl 用图片; type:"text" + text 用首字母
     theme     -> 配色: 背景渐变两色 + 强调色 (accent)
     contact   -> 通讯录信息 (用于"保存到通讯录"导出的 .vcf)
     socials   -> 社交按钮 (platform 可选: linkedin/wechat/instagram/facebook/
                  twitter/github/youtube/mail/phone/website)
     footer    -> 底部显示选项 + 分享按钮文案

   提示 Tips:
     - 字符串用双引号 "..." 包住, 结尾加英文逗号 ,
     - 不要删掉花括号 { } 和方括号 [ ]
     - 想加/删社交按钮, 复制一行 socials 里的 {...} 即可
   ============================================================================ */

window.CARD_CONFIG = {

  // ===== 基本信息 / Basic Info =====
  name: "Hairuo Liu",                                       // 显示姓名
  title: "Ex-Amazon in Ads · AWS Certified Solutions Architect",  // 一句话头衔

  // 简介: 用 "|" 分隔, 每个片段在手机上单独成行。
  // 前两项(Ex-Amazon / AWS Certified)已放进 title, 这里不再重复。
  bio: "Experienced in Amazon AWS and Big Data | Software & Hardware Product Maker | 3D Parametric Design & E-commerce",

  // ===== 头像 / Avatar =====
  // type: "image" 使用图片; type: "text" 使用首字母文字 Logo
  avatar: {
    type: "image",           // "image" or "text"
    imageUrl: "./avatar.png",// 头像图片 (放在仓库里, GitHub Pages 可直接访问)
    text: "HL"               // 文字 Logo 备用 (type="text" 时显示)
  },

  // ===== 主题配色 / Theme (黄 + 黑, 专业风) =====
  theme: {
    gradientStart: "#0d0d0d",  // 背景渐变起始色 (近黑)
    gradientEnd:   "#2a2300",  // 背景渐变结束色 (深暖黑)
    accent:        "#FFB800"   // 主按钮 / 强调色 (Amazon 黄)
  },

  // ===== 通讯录信息 / Contact (用于生成 .vcf 名片) =====
  contact: {
    firstName:   "Hairuo",
    lastName:    "Liu",
    organization:"",                 // 公司 / 组织 (可留空)
    title:       "",                 // 职位 (写入 vCard, 可留空)
    phone:       "6148868181",       // 电话 (国际格式可改为 +16148868181)
    email:       "",                 // 邮箱 (留空则不显示邮箱行)
    website:     "https://www.linkedin.com/in/hairuo-liu/",
    address: {}                     // 地址 (留空对象即可)
  },

  // ===== 社交链接 / Social Links =====
  // platform 可选: linkedin | wechat | instagram | facebook |
  //               twitter | github | youtube | mail | phone | website
  // wechat 的特殊字段: wechatId (微信号, 可复制) / qrImage (二维码图片地址)
  socials: [
    { platform: "linkedin",  url: "https://www.linkedin.com/in/hairuo-liu/",          label: "LinkedIn"  },
    { platform: "wechat",    wechatId: "", qrImage: "",                              label: "WeChat"   },
    { platform: "instagram", url: "https://www.instagram.com/liuhai.er/",             label: "Instagram" },
    { platform: "facebook",  url: "https://www.facebook.com/94LiuHai",                label: "Facebook"  }
  ],

  // ===== 底部联系方式 / Footer =====
  footer: {
    showPhone: false,  // 不在页面公开显示号码 (仅保留在"保存到通讯录"的 vCard 中)
    showEmail: true,   // 是否在底部显示邮箱行 (email 为空时不显示)
    shareText: "分享此名片 · Share this card"  // 分享按钮文案
  }
};
