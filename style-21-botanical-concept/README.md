# Style 21: 溫室植物 / 自然選品風 (Botanical Concept)

溫室花園與有機選品店質感，柔和燕麥白背景搭配深植物綠與陶土燒橙，排版具備自然生長般的鬆弛感與 8px 微圓角。

---

## 🎨 色彩系統 (Color Palette)

- **柔和燕麥白 (Background)**: `#f7f5f0` (`--bot-bg`)
- **深植物綠 (Primary)**: `#2c3e2e` (`--bot-color-primary`)
- **陶土燒橙 (Accent)**: `#c86d51` (`--bot-color-accent`)
- **溫室灰綠 (Secondary)**: `#8a9a86` (`--bot-color-secondary`)
- **湖水清綠 (Info)**: `#4a7c85` (`--bot-color-info`)
- **有機嫩葉綠 (Success)**: `#3b7a57` (`--bot-color-success`)
- **暖陽黃 (Warning)**: `#d99b26` (`--bot-color-warning`)
- **漿果熟紅 (Error)**: `#bc4749` (`--bot-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.bot-container` - 滿版響應式容器 (max-width: 1160px)
- `.bot-navbar` / `.bot-brand` / `.bot-nav-link` - 導覽列組件
- `.bot-hero` / `.bot-hero-tag` - 自然感 Hero 主視覺區
- `.bot-btn` (`.bot-btn-primary`, `.bot-btn-accent`, `.bot-btn-outline`) - 按鈕樣式
- `.bot-card` - 具備細微葉脈感覺的選品卡片
- `.bot-input` / `.bot-select` / `.bot-textarea` - 陶土橙 Focus 光暈表單
- `.bot-switch` - 溫室有機風格切換開關
- `.bot-accordion-header` / `.bot-accordion-body` - 手風琴問答組件
- `.bot-tabs-nav` / `.bot-tab-btn` / `.bot-tab-pane` - 頁籤切換組件
- `.bot-modal-backdrop` / `.bot-modal` - 半透明磨砂跳窗
- `.bot-offcanvas` - 右側選品抽屜
- `.bot-table` - 柔和底色表格

---

## 📜 JavaScript (script.js) 功能說明

- 響應式手機選自由開合（Navbar Toggler）
- Accordion 手風琴展開/收合
- Tabs 頁籤切換
- Modal 彈跳視窗開關
- Offcanvas 側邊抽屜開關
- Range 滑桿即時數值聯動
