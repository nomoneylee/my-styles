# Style 26: 瑞士國際主義黑白刷色 (Mono Swiss Grid)

極致單色（Monochrome）黑白刷色，取消任何彩度，純粹依賴巨大的 Helvetica 筆觸、極粗 4px 黑實線與 100% 滿版 Grid 結構。

---

## 🎨 色彩系統 (Color Palette)

- **絕對深墨 (Primary / Background dark)**: `#050505` (`--swi-color-primary`)
- **紙張純白 (White / Background light)**: `#ffffff` (`--swi-color-white`)
- **報版中灰 (Gray Mid)**: `#666666` (`--swi-color-gray-mid`)
- **印刷亮灰 (Gray Light)**: `#e5e5e5` (`--swi-color-gray-light`)
- **墨跡深灰 (Gray Dark)**: `#333333` (`--swi-color-gray-dark`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.swi-container` - 響應式滿版網格容器 (max-width: 1200px)
- `.swi-grid` - 滿邊框 4px 黑實線 Grid 佈局
- `.swi-hero` / `.swi-hero-title` - 巨大 Helvetica 黑體 Hero 區
- `.swi-btn` (`.swi-btn-outline`) - 極高反差黑白切換按鈕
- `.swi-card` - hover 時產生全黑反相文字效果的黑白卡片
- `.swi-input` / `.swi-select` / `.swi-textarea` - 4px 黑粗邊框表單
- `.swi-accordion-header` / `.swi-tab-btn` - 點擊後反相（Invert）切換手風琴與分頁

---

## 📜 JavaScript (script.js) 功能說明

- 響應式導覽列切換
- Accordion 點擊反相展開
- Tabs 點擊黑白反相切換
- Modal / Offcanvas 控制
- Range 滑桿數值即時顯示
