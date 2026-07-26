# Style 17: 北歐極簡木質風 (Nordic Minimalist Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的斯堪地那維亞室內設計與 HAY 傢俱美學風格設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--nd-color-primary`: `#333333` (北歐深岩灰，用於主要標題與極簡文字)
- `--nd-color-secondary`: `#7a6858` (冷木頭棕，用於木質主題與次要按鈕)
- `--nd-color-accent`: `#4a5d4e` (北歐橄欖綠，用於核心 Accent 與高亮色塊)
- `--nd-color-info`: `#7b8e9b` (莫蘭迪灰藍，用於資訊提示與冷色卡片標籤)
- `--nd-color-success`: `#607d67` (松木綠，用於永續認證與成功狀態)
- `--nd-color-warning`: `#bd9b76` (暖原木黃，用於材料數量提醒)
- `--nd-color-error`: `#a85854` (莫蘭迪赭紅，用於暫停與警告通知)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與色塊區隔 (Layout & Block-based System)
- `.nd-container`: 限制頁面最大寬度 1200px 並自動置中，提供 1.5rem 內邊距。
- `.nd-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- 全站**幾乎無邊框設計**，靠 `.nd-bg-card` (`#f4f2ee`) 與 `.nd-bg-subtle` (`#dedad4`) 大面積留白與柔和色塊切分區隔。

### 2. 導覽列與 Hero (Header & Hero)
- `.nd-navbar`: 黏性頂部、具備淺灰大理石模糊效果 (`backdrop-filter: blur(16px)`) 的導覽列。
- `.nd-hero`: 無邊框大色塊卡片 Hero 區塊，搭配 `border-radius: 24px` 超大柔和圓角與扁平陰影。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.nd-btn`: 全膠囊型柔和按鈕 (`border-radius: 999px`)。
- `.nd-btn-primary`: 北歐橄欖綠底白字按鈕。
- `.nd-btn-secondary`: 冷木頭棕按鈕。
- `.nd-btn-outline`: 淺大理石灰底黑字按鈕。
- `.nd-badge`: 圓潤無邊框標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.nd-input`, `.nd-select`, `.nd-textarea`: 無邊框、大理石卡片質感的輸入框。
- `.nd-checkbox`, `.nd-radio`, `.nd-switch-slider`, `.nd-range`: 自建極簡北歐打勾多選框、單選鈕、開關與 Slider。
- `.nd-card`: 無邊框高質感色塊卡片，懸停時平滑向上浮動。
- `.nd-accordion-item`, `.nd-accordion-header`, `.nd-accordion-body`: 無邊框色塊手風琴展開組件。
- `.nd-tabs`, `.nd-tab-btn`, `.nd-tab-pane`: 膠囊包裹型 Tab 分頁。
- `.nd-modal-overlay`, `.nd-modal`: 深灰模糊遮罩、具備全寬防溢出特性的 Modal 對話框。
- `.nd-offcanvas`: 右側滑出式品味選單。
- `.nd-progress`, `.nd-progress-bar`: 橄欖綠圓潤進度條。
- `.nd-table`: 無外邊框、大理石色塊 Header 的新品規格清單表。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.nd-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.nd-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#ndModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.nd-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#ndOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.nd-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.nd-tab-pane` 顯示。
