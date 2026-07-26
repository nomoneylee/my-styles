# Style 20: 當代展覽手冊 / 概念設計風 (Editorial Exhibition Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的當代藝術展覽手冊與前衛視覺排版設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--ex-color-primary`: `#0a0a0a` (概念純黑，用於主文字與前衛邊框)
- `--ex-color-secondary`: `#666666` (標註中灰，用於說明字體與次要資訊)
- `--ex-color-accent`: `#0022ff` (展覽標註藍，用於核心 Accent 與頁碼標註)
- `--ex-color-info`: `#4455bb` (概念靛藍，用於通知與說明區塊)
- `--ex-color-success`: `#008844` (實驗墨綠，用於測試完成狀態)
- `--ex-color-warning`: `#e66000` (展覽警戒橘，用於庫存提醒)
- `--ex-color-error`: `#ff3300` (實驗亮紅，用於區域維護警告)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與頁碼感標註排版 (Layout & Tagging System)
- `.ex-container`: 限制頁面最大寬度 1200px 並自動置中，提供 1.5rem 內邊距。
- `.ex-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- 採用高對比灰白背景 (`#f0f0f0`) 與純無圓角 (`border-radius: 0`)，結合 `[ REF_01 ]` 頁碼感標註 (`.ex-page-tag`)，展現大字與小字強烈視覺反差。

### 2. 導覽列與 Hero (Header & Hero)
- `.ex-navbar`: 黏性頂部、具備灰白模糊效果 (`backdrop-filter: blur(12px)`) 的導覽列。
- `.ex-hero`: 純白展板卡片、標註小字與巨型標題相間的 Hero 區塊。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.ex-btn`: 前衛無圓角矩形按鈕。
- `.ex-btn-primary`: 概念純黑底白字按鈕。
- `.ex-btn-outline`: 灰白透光黑框按鈕。
- `.ex-badge`: Monospace 等寬字型展覽標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.ex-input`, `.ex-select`, `.ex-textarea`: 純白底色、銳利 1px 黑邊框輸入框。
- `.ex-checkbox`, `.ex-radio`, `.ex-switch-slider`, `.ex-range`: 自建前衛「■」方形打勾多選框、單選鈕、開關與 Slider。
- `.ex-card`: 展板卡片，懸停時亮起展覽標註藍邊框。
- `.ex-accordion-item`, `.ex-accordion-header`, `.ex-accordion-body`: 帶有「[ + ]」「[ - ]」符號的手風琴展開組件。
- `.ex-tabs`, `.ex-tab-btn`, `.ex-tab-pane`: 等寬字型底線 Tab 分頁。
- `.ex-modal-overlay`, `.ex-modal`: 概念暗色遮罩、具備全寬防溢出特性的 Modal 對話框。
- `.ex-offcanvas`: 右側滑出式展覽目錄選單。
- `.ex-progress`, `.ex-progress-bar`: 展覽標註藍進度條。
- `.ex-table`: 灰白 Header、Monospace 標註的展品目錄對照表。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.ex-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.ex-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#exModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.ex-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#exOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.ex-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.ex-tab-pane` 顯示。
