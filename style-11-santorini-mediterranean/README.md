# Style 11: 希臘聖托里尼 / 地中海度假風 (Santorini Mediterranean Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的希臘聖托里尼 / 地中海度假美學風格設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--st-color-primary`: `#0055b8` (聖托里尼大海藍，用於標題、主要按鈕與核心邊框)
- `--st-color-secondary`: `#003e8a` (愛琴海深藍，用於懸停 hover 狀態)
- `--st-color-accent`: `#f5a623` (日照金黃色，用於重點高亮、標誌點綴)
- `--st-color-info`: `#00a896` (碧海綠，用於航程與資訊提示)
- `--st-color-success`: `#2a9d8f` (地中海橄欖綠，用於成功狀態與預訂確認)
- `--st-color-warning`: `#f4a261` (陽光落日橘，用於注意事項與警示)
- `--st-color-error`: `#e76f51` (九重葛紫紅，用於急迫提醒與暫停服務)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與容器 (Layout & Grid System)
- `.st-container`: 限制頁面最大寬度 1200px 並自動置中，提供 1.5rem 內邊距。
- `.st-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- `.st-col-12`, `.st-col-8`, `.st-col-6`, `.st-col-4`, `.st-col-3`: 網格跨度類別。
- `.st-flex`, `.st-flex-center`, `.st-flex-between`, `.st-flex-wrap`: Flexbox 通用佈局類別。

### 2. 導覽列與 Hero (Header & Hero)
- `.st-navbar`: 黏性頂部（Sticky Header）、具備陽光玻璃模糊 (`backdrop-filter: blur(12px)`) 的藍白導覽列。
- `.st-hero`: Hero 主視覺區塊，搭配天藍漸層背景與海浪圓角 (`24px`)。
- `.st-hero-title`: 自適應字級大標題，傳遞透澈明亮的放鬆度假氛圍。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.st-btn`: 柔和全膠囊圓角按鈕 (`border-radius: 999px`)。
- `.st-btn-primary`: 主按鈕 (聖托里尼大海藍底白字，帶陽光立體陰影)。
- `.st-btn-accent`: 金黃點綴按鈕 (日照金黃底暗藍字)。
- `.st-btn-outline`: 藍色細邊框按鈕。
- `.st-badge`: 膠囊型高亮標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.st-input`, `.st-select`, `.st-textarea`: 柔和海藍邊框輸入框。
- `.st-checkbox`, `.st-radio`, `.st-switch-slider`, `.st-range`: 自建藍金風格多選框、單選鈕、開關與範圍滑桿。
- `.st-card`: 純白陽光卡片，懸停時向上浮動與加深大海藍邊框。
- `.st-accordion-item`, `.st-accordion-header`, `.st-accordion-body`: 可折疊手風琴元件。
- `.st-tabs`, `.st-tab-btn`, `.st-tab-pane`: 藍金底線分頁切換元件。
- `.st-modal-overlay`, `.st-modal`: 莫蘭迪藍透明遮罩 Modal 彈窗。
- `.st-offcanvas`: 右側滑出式度假選單。
- `.st-progress`, `.st-progress-bar`: 藍金漸層進度條。
- `.st-table`: 明亮藍白交錯表格。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.st-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.st-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#stModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.st-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#stOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.st-tab-btn` 點擊事件。
- **作用機制**：讀取 `data-tab` 屬性切換對應 ID 的 `.st-tab-pane` 顯示。
