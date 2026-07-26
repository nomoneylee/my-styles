# Style 13: 韓系奶油甜點風 (Korean Minimalist Warm Style)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的韓系文青咖啡廳 / 手作甜點美學風格設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--kr-color-primary`: `#6b5b52` (暖燕麥濃褐，用於主要標題、重點按鈕與文字)
- `--kr-color-secondary`: `#8c7a70` (柔和奶茶褐，用於次要文字與引言)
- `--kr-color-accent`: `#f6e7c1` (溫柔奶油黃，用於重點 Accent 與高亮區域)
- `--kr-color-info`: `#b8dbce` (低飽和薄荷綠，用於系統 Notify 與草本質感點綴)
- `--kr-color-success`: `#a8c99c` (開心果草本綠，用於成功狀態與預訂驗證)
- `--kr-color-warning`: `#f5c2a5` (蜜桃粉橘，用於提醒與溫馨提示)
- `--kr-color-error`: `#e8a5a5` (莓果柔粉紅，用於品項售罄與警告)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與容器 (Layout & Grid System)
- `.kr-container`: 限制頁面最大寬度 1200px 並自動置中，提供 1.5rem 兩側邊距。
- `.kr-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- `.kr-col-12`, `.kr-col-8`, `.kr-col-6`, `.kr-col-4`, `.kr-col-3`: 欄位跨度類別。
- `.kr-flex`, `.kr-flex-center`, `.kr-flex-between`, `.kr-flex-wrap`: Flexbox 輔助工具。

### 2. 導覽列與 Hero (Header & Hero)
- `.kr-navbar`: 黏性頂部、具備奶油玻璃模糊效果 (`backdrop-filter: blur(15px)`) 的導覽列。
- `.kr-hero`: 燕麥色邊框與純白質感卡片結合的 Hero 區塊，搭配 `border-radius: 32px` 超大軟萌圓角。
- `.kr-hero-title`: 700 字重優雅大標題，呈現極度溫柔、舒服與療癒風格。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.kr-btn`: 軟萌全膠囊圓角按鈕 (`border-radius: 999px`)。
- `.kr-btn-primary`: 濃褐底白字按鈕。
- `.kr-btn-accent`: 溫柔奶油黃按鈕。
- `.kr-btn-mint`: 低飽和薄荷綠按鈕。
- `.kr-badge`: 圓潤溫和標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.kr-input`, `.kr-select`, `.kr-textarea`: 柔和燕麥色邊框與圓角輸入框。
- `.kr-checkbox`, `.kr-radio`, `.kr-switch-slider`, `.kr-range`: 自建韓系愛心細節多選框、單選鈕、開關與範圍 Slider。
- `.kr-card`: 雲朵微陰影白底卡片，懸停時平滑上浮。
- `.kr-accordion-item`, `.kr-accordion-header`, `.kr-accordion-body`: 柔和手風琴展開元件。
- `.kr-tabs`, `.kr-tab-btn`, `.kr-tab-pane`: 膠囊包裹式 Tab 分頁。
- `.kr-modal-overlay`, `.kr-modal`: 莫蘭迪棕色遮罩 Modal 對話框。
- `.kr-offcanvas`: 右側滑出式甜點專欄選單。
- `.kr-progress`, `.kr-progress-bar`: 圓潤薄荷綠進度條。
- `.kr-table`: 溫和奶茶色 Header 的甜點價目明細表。

---

## 📜 JavaScript (`script.js`) 使用說明

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.kr-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.kr-accordion-item` 的 `open` Class。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#krModalOverlay` 加上 `active` Class。
- **關閉觸發點**：`.kr-close-modal` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#krOffcanvas` 加上 `active` Class。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。

### 4. 分頁切換 (Tabs)
- **綁定標的**：所有 `.kr-tab-btn` 點擊事件。
- **作用機制**：切換對應 ID 的 `.kr-tab-pane` 顯示。
