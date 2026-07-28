# Style 27: 韓系柔焦莫蘭迪 / 藝文畫廊 (Soft Morandi Atelier)

低飽和度莫蘭迪色系，溫柔粉灰、霧藍與灰綠搭配超大弧度柔邊（20px）與超柔和羽化陰影（0 10px 30px rgba(...)）。

---

## 🎨 色彩系統 (Color Palette)

- **莫蘭迪粉灰 (Background)**: `#f4efe9` (`--mor-bg`)
- **暖木咖 (Primary)**: `#6e5e55` (`--mor-color-primary`)
- **霧面灰藍 (Accent)**: `#8b9dc3` (`--mor-color-accent`)
- **沉靜鼠尾草綠 (Secondary)**: `#9bb0a5` (`--mor-color-secondary`)
- **莫蘭迪天藍 (Info)**: `#7fa1b8` (`--mor-color-info`)
- **莫蘭迪灰綠 (Success)**: `#88a382` (`--mor-color-success`)
- **暖燕麥橙 (Warning)**: `#d9ab7e` (`--mor-color-warning`)
- **豆沙灰紅 (Error)**: `#c47c77` (`--mor-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.mor-container` - 響應式容器 (max-width: 1140px)
- `.mor-navbar` - 半透明柔焦導覽列
- `.mor-hero` / `.mor-hero-tag` - 柔和低飽和度 Hero 區塊
- `.mor-btn` (`.mor-btn-primary`, `.mor-btn-accent`, `.mor-btn-outline`) - 帶有奶凍彈性微互動（Pudding Bounce）按鈕
- `.mor-card` - 20px 弧度與微浮雕陰影卡片
- `.mor-input` / `.mor-select` / `.mor-textarea` - 溫和內陰影表單
- `.mor-modal` / `.mor-offcanvas` - 柔焦半透明視窗與選品抽屜

---

## 📜 JavaScript (script.js) 功能說明

- 響應式導覽列開啟/關閉
- Accordion 手風琴展開/收合
- Tabs 頁籤切換
- Modal 及 Offcanvas 控制
- Range 滑桿數值即時連動
