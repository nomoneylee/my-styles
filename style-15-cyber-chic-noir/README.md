# Style 15: 賽博龐克微燻風 (Cyber-Chic Noir Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的賽博龐克微醺酒吧 / 音樂工作室美學風格設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--cb-color-primary`: `#180a17` (深暗酒紅底色，用於頁面基調與包廂區域)
- `--cb-color-secondary`: `#0d1a16` (深暗墨綠底色，用於次要背景與冷色區塊)
- `--cb-color-accent`: `#ff2a85` (霓虹洋紅 Neon Magenta，用於主要按鈕、高亮光暈與核心邊框)
- `--cb-color-info`: `#ffe600` (螢光黃 Neon Yellow，用於資訊提示與調音頻段標籤)
- `--cb-color-success`: `#00ff9d` (微醺翡翠綠，用於成功狀態與光線發光)
- `--cb-color-warning`: `#ff9900` (強烈琥珀橘，用於容量警告與警示)
- `--cb-color-error`: `#ff0055` (微醺紫紅，用於錯誤提醒與管制區)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與網格 (Layout & Grid System)
- `.cb-container`: 限制頁面最大寬度 1200px 並自動置中，提供 1.5rem 內邊距。
- `.cb-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- `.cb-col-12`, `.cb-col-8`, `.cb-col-6`, `.cb-col-4`, `.cb-col-3`: 網格欄位跨度類別。
- `.cb-flex`, `.cb-flex-center`, `.cb-flex-between`, `.cb-flex-wrap`: Flexbox 通用佈局工具。

### 2. 導覽列與 Hero (Header & Hero)
- `.cb-navbar`: 黏性頂部、具備深色莫蘭迪紫光暈模糊 (`backdrop-filter: blur(16px)`) 的導覽列。
- `.cb-hero`: 酒紅與墨綠對角漸層 Hero 區塊，搭配霓虹洋紅邊框與發光特效 (`box-shadow: 0 0 12px rgba(255, 42, 133, 0.4)`).
- `.cb-hero-title`: 900 大字重大標題，呈現深夜迷幻的故事感。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.cb-btn`: 具備霓虹光效與 `letter-spacing: 0.08em` 的微醺按鈕。
- `.cb-btn-primary`: 霓虹洋紅底白字發光按鈕。
- `.cb-btn-info`: 螢光黃底黑字按鈕。
- `.cb-btn-outline`: 洋紅細光線邊框按鈕。
- `.cb-badge`: 霓虹外框標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.cb-input`, `.cb-select`, `.cb-textarea`: 深色底、洋紅發光 focus 外觀輸入框。
- `.cb-checkbox`, `.cb-radio`, `.cb-switch-slider`, `.cb-range`: 自建賽博龐克光暈多選框、單選鈕、開關與 Slider。
- `.cb-card`: 深酒紅紫底卡片，懸停時亮起洋紅光暈邊框。
- `.cb-accordion-item`, `.cb-accordion-header`, `.cb-accordion-body`: 暗色微醺手風琴展開元件。
- `.cb-tabs`, `.cb-tab-btn`, `.cb-tab-pane`: 霓虹底條動態 Tab 分頁。
- `.cb-modal-overlay`, `.cb-modal`: 莫蘭迪深紫透明模糊遮罩 Modal 對話框。
- `.cb-offcanvas`: 右側滑出式微醺酒吧選單。
- `.cb-progress`, `.cb-progress-bar`: 洋紅至螢光黃漸層動態進度條。
- `.cb-table`: 暗色底、螢光黃 Header 的特調與曲目表。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.cb-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.cb-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#cbModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.cb-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#cbOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.cb-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.cb-tab-pane` 顯示。
