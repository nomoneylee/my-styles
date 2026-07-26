# Style 12: 包浩斯現代主義風 (Bauhaus Modernism Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的包浩斯 (Bauhaus) 現代主義美學風格設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--bh-color-primary`: `#121212` (包浩斯純黑實線，用於粗邊框、大標題與強烈實體陰影)
- `--bh-color-secondary`: `#f4efe6` (經典米黃色底，呈現歷史感質感紙張畫布)
- `--bh-color-accent`: `#d9381e` (包浩斯原色紅，用於視覺高亮與核心焦點按鈕)
- `--bh-color-info`: `#00509d` (包浩斯原色藍，用於資訊提示與冷色幾何塊面)
- `--bh-color-success`: `#0a9396` (幾何青藍，用於成功狀態與驗證標示)
- `--bh-color-warning`: `#ffb703` (包浩斯原色黃，用於警示區域與亮色切分)
- `--bh-color-error`: `#9b2226` (深赭紅，用於嚴厲警告與危險提示)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與幾何網格 (Layout & Grid System)
- `.bh-container`: 限制頁面最大寬度 1200px 並自動置中，提供 1.5rem 內邊距。
- `.bh-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- `.bh-col-12`, `.bh-col-8`, `.bh-col-6`, `.bh-col-4`, `.bh-col-3`: 網格欄位跨度類別。
- `.bh-flex`, `.bh-flex-center`, `.bh-flex-between`, `.bh-flex-wrap`: Flexbox 通用佈局類別。

### 2. 導覽列與 Hero (Header & Hero)
- `.bh-navbar`: 粗實黑線邊框與米黃底色的固定導覽列。
- `.bh-hero`: 非對稱幾何切分 Hero 區域，左側文字區與右側包含圓形、正方形、原色藍底的包浩斯幾何視覺圖形。
- `.bh-hero-title`: 900 大粗體大寫標題，充滿現代主義設計力量。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.bh-btn`: 硬派直角按鈕，具備 `5px 5px 0px #121212` 黑色實心陰影。
- `.bh-btn-primary`: 實黑底白字按鈕。
- `.bh-btn-accent`: 原色紅按鈕。
- `.bh-btn-warning`: 原色黃按鈕。
- `.bh-badge`: 純黑實線標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.bh-input`, `.bh-select`, `.bh-textarea`: 黑色粗框與 3px 實體陰影輸入框。
- `.bh-checkbox`, `.bh-radio`, `.bh-switch-slider`, `.bh-range`: 自建極簡幾何多選框、單選鈕、開關與範圍 slider。
- `.bh-card`: 幾何切分卡片，具備強烈非對稱頂部色條 (`bh-card-accent-top`) 與黑色實心陰影。
- `.bh-accordion-item`, `.bh-accordion-header`, `.bh-accordion-body`: 原色黃高亮標題的手風琴展開元件。
- `.bh-tabs`, `.bh-tab-btn`, `.bh-tab-pane`: 硬派矩形切分 Tab 分頁。
- `.bh-modal-overlay`, `.bh-modal`: 黑色 3px 實線粗邊框 Modal 對話框。
- `.bh-offcanvas`: 右側滑出式包浩斯目錄選單。
- `.bh-progress`, `.bh-progress-bar`: 粗框矩形原色紅進度條。
- `.bh-table`: 實線交錯、原色黃 Header 的代表作品典藏表格。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.bh-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.bh-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#bhModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.bh-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#bhOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.bh-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.bh-tab-pane` 顯示。
