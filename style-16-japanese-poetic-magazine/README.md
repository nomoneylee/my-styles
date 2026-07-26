# Style 16: 日系幾何雜誌 / 詩意風格 (Japanese Poetic Magazine Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的日系質感生活雜誌（如 Popeye 或 Brutus）美學風格設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--jp-color-primary`: `#222222` (印墨炭黑，用於主要文字、標題與黑邊框)
- `--jp-color-secondary`: `#555555` (詩意中灰，用於說明內文與引言)
- `--jp-color-accent`: `#c83e2b` (詩意朱紅，用於標誌點綴、直排文字分界線與重點按鈕)
- `--jp-color-info`: `#6a7f72` (莫蘭迪青綠，用於資訊提示與自然氛圍標籤)
- `--jp-color-success`: `#5a7d65` (竹林苔綠，用於成功狀態驗證)
- `--jp-color-warning`: `#d99b26` (柿子黃橘，用於注意事項與限定提醒)
- `--jp-color-error`: `#ad3324` (茜草深紅，用於延期與警告通知)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與直排文字 (Layout & Vertical Typography)
- `.jp-container`: 限制頁面最大寬度 1180px 並自動置中，提供 1.5rem 內邊距。
- `.jp-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- `.jp-vertical-text`: 直排文字類別 (`writing-mode: vertical-rl; text-orientation: mixed;`)，展現日式雜誌文字呼吸感與詩意美學。在手機版適應性轉為橫排。

### 2. 導覽列與 Hero (Header & Hero)
- `.jp-navbar`: 黏性頂部、具備淡黃灰和紙模糊效果 (`backdrop-filter: blur(12px)`) 的導覽列。
- `.jp-hero`: 雙欄排版 Hero 區塊，結合橫排主要文案與右側日文直排文學短句。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.jp-btn`: 簡潔微圓角按鈕 (`border-radius: 4px`)。
- `.jp-btn-primary`: 印墨炭黑底白字按鈕。
- `.jp-btn-accent`: 詩意朱紅按鈕。
- `.jp-btn-outline`: 細邊框按鈕。
- `.jp-badge`: 精細細邊框標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.jp-input`, `.jp-select`, `.jp-textarea`: 柔和和紙邊框輸入框。
- `.jp-checkbox`, `.jp-radio`, `.jp-switch-slider`, `.jp-range`: 自建極簡日式打勾多選框、單選鈕、開關與 Slider。
- `.jp-card`: 純白質感卡片，懸停時微加深邊框與輕微陰影。
- `.jp-accordion-item`, `.jp-accordion-header`, `.jp-accordion-body`: 兼具「＋」「－」符號的可折疊手風琴元件。
- `.jp-tabs`, `.jp-tab-btn`, `.jp-tab-pane`: 極簡底線型 Tab 分頁。
- `.jp-modal-overlay`, `.jp-modal`: 莫蘭迪黑透明遮罩、完美自動置中的 Modal 彈窗。
- `.jp-offcanvas`: 右側滑出式雜誌選單。
- `.jp-progress`, `.jp-progress-bar`: 詩意朱紅進度條。
- `.jp-table`: 輕柔淡黃灰 Header 的專題目錄表格。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.jp-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.jp-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#jpModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.jp-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#jpOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.jp-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.jp-tab-pane` 顯示。
