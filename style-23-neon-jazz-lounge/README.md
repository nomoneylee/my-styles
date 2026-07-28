# Style 23: 霓虹深夜酒吧 / 爵士音樂室 (Neon Jazz Lounge)

深夜 Jazz Bar 與地下微醺空間，沉穩極深藍紫底色，搭配 Neon 霓虹桃紅與微弱柔光擴散（box-shadow: 0 0 15px）。

---

## 🎨 色彩系統 (Color Palette)

- **深夜微醺藍紫 (Background / Primary)**: `#0a0814` (`--jaz-color-primary` / `--jaz-bg`)
- **霓虹微醺桃 (Accent)**: `#ff2a75` (`--jaz-color-accent`)
- **爵士金屬黃 (Secondary)**: `#ffc857` (`--jaz-color-secondary`)
- **調酒琉璃藍 (Info)**: `#00f0ff` (`--jaz-color-info`)
- **薄荷調酒綠 (Success)**: `#00e676` (`--jaz-color-success`)
- **威士忌琥珀 (Warning)**: `#ff9100` (`--jaz-color-warning`)
- **雞尾酒烈紅 (Error)**: `#ff1744` (`--jaz-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.jaz-container` - 響應式容器 (max-width: 1140px)
- `.jaz-navbar` - 高質感毛玻璃導覽列 (backdrop-filter: blur(16px))
- `.jaz-hero` / `.jaz-hero-tag` - 霓虹暈光標籤與英雄區塊
- `.jaz-card` - hover 時展現霓虹粉紅擴散陰影的卡片
- `.jaz-btn` (`.jaz-btn-accent`, `.jaz-btn-info`, `.jaz-btn-outline`) - 霓虹光暈按鈕
- `.jaz-input` / `.jaz-select` / `.jaz-textarea` - 毛玻璃邊框 Focus 霓虹發光欄位
- `.jaz-modal-backdrop` / `.jaz-offcanvas` - 高透明度毛玻璃半透明跳窗 (backdrop-filter: blur(12px))

---

## 📜 JavaScript (script.js) 功能說明

- 響應式手機選單開合
- Accordion 展開切換
- Tabs 頁籤切換
- Modal / Offcanvas 毛玻璃視窗開關
- Range 滑桿數值即時顯示
