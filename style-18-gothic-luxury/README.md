# Style 18: 暗黑哥德 / 獨立精品風 (Gothic Luxury Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的高級獨立香氛與暗黑哥德精品時尚美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--gt-color-primary`: `#141416` (深沉炭灰，用於頁面背景與品牌基底)
- `--gt-color-secondary`: `#a6a8ab` (古典銀灰，用於內文對比與次要按鈕)
- `--gt-color-accent`: `#800a1c` (暗夜血紅，用於核心 Accent、霓虹光暈與主要按鈕)
- `--gt-color-info`: `#7c899c` (漆黑藍灰，用於通知與冷沉資訊)
- `--gt-color-success`: `#2e5944` (墨綠香氛，用於成功驗證)
- `--gt-color-warning`: `#9e7d47` (暗古銅金，用於限量與金屬感提醒)
- `--gt-color-error`: `#9e1b24` (哥德紫紅，用於警告通知)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與古典襯線排版 (Layout & Serif System)
- `.gt-container`: 限制頁面最大寬度 1200px 並自動置中，提供 1.5rem 內邊距。
- `.gt-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- 採用古典細長襯線字體 (`font-family: 'Cinzel', serif`) 與 1px 微細銀邊切分 (`rgba(209, 213, 219, 0.18)`)。

### 2. 導覽列與 Hero (Header & Hero)
- `.gt-navbar`: 黏性頂部、具備炭黑模糊效果 (`backdrop-filter: blur(16px)`) 的導覽列。
- `.gt-hero`: 細微銀邊切分、中央奢華文案對齊與血紅微光束 Hero 區塊。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.gt-btn`: 細緻微圓角精品按鈕 (`border-radius: 2px`)。
- `.gt-btn-primary`: 暗夜血紅底白字按鈕，帶有暗紅光暈 (`box-shadow: 0 0 15px rgba(128,10,28,0.4)`).
- `.gt-btn-outline`: 古典銀邊透光按鈕。
- `.gt-badge`: 簡潔銀邊標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.gt-input`, `.gt-select`, `.gt-textarea`: 暗沉炭黑底色、銀邊聚焦亮血紅光暈的輸入框。
- `.gt-checkbox`, `.gt-radio`, `.gt-switch-slider`, `.gt-range`: 自建哥德「◆」菱形打勾多選框、單選鈕、開關與 Slider。
- `.gt-card`: 暗黑精品卡片，懸停時亮起暗夜血紅光暈與銀邊。
- `.gt-accordion-item`, `.gt-accordion-header`, `.gt-accordion-body`: 帶有「┼」「─」符號的哥德手風琴展開組件。
- `.gt-tabs`, `.gt-tab-btn`, `.gt-tab-pane`: 古典銀邊底線型 Tab 分頁。
- `.gt-modal-overlay`, `.gt-modal`: 漆黑模糊遮罩、具備全寬防溢出特性的 Modal 對話框。
- `.gt-offcanvas`: 右側滑出式暗夜選單。
- `.gt-progress`, `.gt-progress-bar`: 暗夜血紅奢華進度條。
- `.gt-table`: 銀邊切分、黑色 Header 的獨立香氛典藏表。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.gt-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.gt-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#gtModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.gt-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#gtOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.gt-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.gt-tab-pane` 顯示。
