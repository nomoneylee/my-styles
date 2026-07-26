# Style 19: 新美式復古 Arcade / 嬉皮風 (70s Vintage Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的 70 年代美式黑膠唱片行與 Arcade 街機遊戲美學風格設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--rt-color-primary`: `#4a2912` (復古深棕，用於主要標題、外邊框與文字)
- `--rt-color-secondary`: `#e3a826` (芥末黃，用於 Navbar 基底、標籤與次要按鈕)
- `--rt-color-accent`: `#d94e2b` (嬉皮橘紅，用於核心 Accent 與主按鈕)
- `--rt-color-info`: `#3b7a8c` (綠松石藍，用於資訊提示與冷色標籤)
- `--rt-color-success`: `#558c44` (酪梨綠，用於高分紀錄與成功驗證)
- `--rt-color-warning`: `#f28d35` (太陽橘，用於限量唱片提醒)
- `--rt-color-error`: `#c42b2b` (街機櫻桃紅，用於機台卡幣與警告通知)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與厚重重立體邊框 (Layout & Heavy Retro System)
- `.rt-container`: 限制頁面最大寬度 1180px 並自動置中，提供 1.5rem 內邊距。
- `.rt-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- 採用圓潤厚重字體 (`font-family: 'Righteous', sans-serif`) 與 3px / 4px 重度邊框搭配實心偏置陰影 (`box-shadow: 5px 5px 0px #4a2912`)。

### 2. 導覽列與 Hero (Header & Hero)
- `.rt-navbar`: 黏性頂部、亮眼芥末黃底與實心深棕底陰影 (`box-shadow: 0 4px 0px #4a2912`) 的導覽列。
- `.rt-hero`: 70s 嬉皮橘黃漸層 background、3px 實線深棕邊框 Hero 區塊。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.rt-btn`: 帶有 3px 重度邊框與 5px 實心陰影的立體按鈕。
- `.rt-btn-primary`: 嬉皮橘紅按鈕。
- `.rt-btn-secondary`: 芥末黃按鈕。
- `.rt-btn-outline`: 奶黃卡片色按鈕。
- `.rt-badge`: 圓潤帶邊框的「★」標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.rt-input`, `.rt-select`, `.rt-textarea`: 純白底、3px 棕色邊框與 3px 陰影輸入框。
- `.rt-checkbox`, `.rt-radio`, `.rt-switch-slider`, `.rt-range`: 自建復古 Arcade「★」打勾多選框、單選鈕、開關與 Slider。
- `.rt-card`: 奶黃復古卡片，懸停時微向上浮動。
- `.rt-accordion-item`, `.rt-accordion-header`, `.rt-accordion-body`: 帶有「▶」「▼」符號的手風琴展開組件。
- `.rt-tabs`, `.rt-tab-btn`, `.rt-tab-pane`: 街機陰影 Tab 分頁。
- `.rt-modal-overlay`, `.rt-modal`: 復古棕色遮罩、具備全寬防溢出特性的 8px 陰影 Modal 對話框。
- `.rt-offcanvas`: 右側滑出式嬉皮選單。
- `.rt-progress`, `.rt-progress-bar`: 嬉皮橘紅立體邊框進度條。
- `.rt-table`: 3px 邊框、芥末黃 Header 的黑膠排行榜。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.rt-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.rt-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#rtModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.rt-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#rtOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.rt-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.rt-tab-pane` 顯示。
