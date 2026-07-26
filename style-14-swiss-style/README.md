# Style 14: 瑞士國際主義字體風 (Swiss International Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的經典瑞士國際平面設計美學風格系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--sw-color-primary`: `#000000` (絕對純黑，用於所有大標題、主要按鈕與極簡實線分割)
- `--sw-color-secondary`: `#555555` (中性灰，用於次要文字與內容對比)
- `--sw-color-accent`: `#ff0000` (瑞士國旗經典紅 Helvetia Red，用於視覺高亮與核心焦點)
- `--sw-color-info`: `#0033cc` (鈷藍，用於資訊標誌與網格提示)
- `--sw-color-success`: `#006633` (墨綠，用於成功狀態與狀態標籤)
- `--sw-color-warning`: `#ffcc00` (金黃，用於警示與高對比區塊)
- `--sw-color-error`: `#d32f2f` (硃砂紅，用於錯誤提醒)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與嚴格網格 (Layout & Grid System)
- `.sw-container`: 限制頁面最大寬度 1240px 並自動置中，提供 2rem 兩側邊距。
- `.sw-grid`: 嚴格 12 欄無間隙黑色實線網格容器。
- `.sw-col-12`, `.sw-col-8`, `.sw-col-6`, `.sw-col-4`, `.sw-col-3`: 欄位網格類別，四周帶有 2px 純黑實線對齊切分。
- `.sw-flex`, `.sw-flex-center`, `.sw-flex-between`, `.sw-flex-wrap`: Flexbox 通用佈局類別。

### 2. 導覽列與 Hero (Header & Hero)
- `.sw-navbar`: 黏性頂部（Sticky Header）純白背景導覽列，每個選單項目皆以黑色 2px 實線分隔。
- `.sw-hero`: 巨型標題 Hero 區塊，採用 `clamp(3.2rem, 9vw, 7rem)` 超大巨型字體與 900 字重，充滿頂級平面設計視覺震撼。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.sw-btn`: **嚴禁圓角 (`border-radius: 0`)** 的矩形邊框按鈕。
- `.sw-btn-primary`: 純黑底白字按鈕。
- `.sw-btn-accent`: 瑞士紅底白字按鈕。
- `.sw-btn-outline`: 黑色細邊框按鈕。
- `.sw-badge`: 零圓角大寫高亮標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.sw-input`, `.sw-select`, `.sw-textarea`: 黑色 2px 實線邊框、無圓角輸入框。
- `.sw-checkbox`, `.sw-radio`, `.sw-switch-slider`, `.sw-range`: 自建極簡純黑實線多選框、單選鈕、開關與 Slider。
- `.sw-card`: 純黑實線包覆的網格卡片，**零任何陰影或漸層**。
- `.sw-accordion-item`, `.sw-accordion-header`, `.sw-accordion-body`: 箭頭旋轉動畫的可折疊手風琴元件。
- `.sw-tabs`, `.sw-tab-btn`, `.sw-tab-pane`: 純黑實線分頁切換組件。
- `.sw-modal-overlay`, `.sw-modal`: 純白背景、黑線分割的瑞士風格 Modal 對話框。
- `.sw-offcanvas`: 右側滑出式瑞士索引選單。
- `.sw-progress`, `.sw-progress-bar`: 黑白對比條形進度條。
- `.sw-table`: 實線交錯、黑底白字 Header 的大師典藏表格。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.sw-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.sw-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#swModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.sw-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#swOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.sw-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.sw-tab-pane` 顯示。
