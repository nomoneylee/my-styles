# Style 01: Apple 官網 / 高級設計雜誌風格 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 或外部框架依賴）的 Apple 官網 / 高級設計雜誌美學風格設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--ap-color-primary`: `#1d1d1f` (深灰炭黑，用於標題、主要按鈕與文字)
- `--ap-color-secondary`: `#86868b` (輔助中灰，用於引言與說明文字)
- `--ap-color-accent`: `#0066cc` (蘋果科技藍，用於重點高亮)
- `--ap-color-info`: `#34aadc` (冰藍色，用於系統資訊與 Notify 提示)
- `--ap-color-success`: `#34c759` (翡翠綠，用於成功狀態與驗證)
- `--ap-color-warning`: `#ff9500` (琥珀橘，用於警告與提醒)
- `--ap-color-error`: `#ff3b30` (珊瑚紅，用於錯誤提醒與危險動作)

---

## 🛠️ CSS Class 類別清單與用途說明

### 1. 佈局與容器 (Layout & Grid System)
- `.ap-container`: 限制頁面最大寬度 1200px 並自動置中，提供 1.5rem 兩側內邊距。
- `.ap-grid`: 基於 CSS Grid 的 12 欄網格佈局容器。
- `.ap-col-12`, `.ap-col-8`, `.ap-col-6`, `.ap-col-4`, `.ap-col-3`: 欄位跨度網格類別。
- `.ap-flex`, `.ap-flex-center`, `.ap-flex-between`, `.ap-flex-wrap`: Flexbox 通用佈局工具。

### 2. 導覽列與 Hero (Header & Hero)
- `.ap-navbar`: 固定頂部、具備玻璃模糊效果 (`backdrop-filter: blur(20px)`) 的導覽列。
- `.ap-hero`: Hero 主視覺區塊，搭配淺灰背景 (`#f5f5f7`) 與圓角 (`24px`)。
- `.ap-hero-title`: 700 字重、自適應字級 (`clamp`) 的極簡大標題。

### 3. 按鈕與標籤 (Buttons & Badges)
- `.ap-btn`: 圓角膠囊型按鈕基礎類別 (`border-radius: 980px`)。
- `.ap-btn-primary`: 主按鈕 (深灰炭黑底白字)。
- `.ap-btn-outline`: 細邊框按鈕 (`border: 1px solid #1d1d1f`)。
- `.ap-badge`: 圓角小標籤。

### 4. 表單與互動元件 (Forms, Cards, Modal & Accordion)
- `.ap-input`, `.ap-select`, `.ap-textarea`: 原生自訂外觀輸入框與選單。
- `.ap-card`: 輕量細邊框卡片，具備懸停變色效果。
- `.ap-accordion-item`, `.ap-accordion-header`, `.ap-accordion-body`: 可折疊手風琴元件。
- `.ap-modal-overlay`, `.ap-modal`: 自建背景模糊 Modal 彈窗元件。
- `.ap-offcanvas`: 右側滑出式選單。

---

## 📜 JavaScript (`script.js`) 使用說明

本頁面將所有動態互動抽離並獨立存成 `script.js` 檔案，在 DOM 載入完畢後自動綁定事件：

### 1. 手風琴折疊 (Accordion)
- **綁定標的**：所有 `.ap-accordion-header` 點擊事件。
- **作用機制**：切換父層 `.ap-accordion-item` 的 `open` Class，以控制 `.ap-accordion-body` 的展開與隱藏。

### 2. 原生 Modal 對話框控制
- **開啟觸發點**：`#openModal` 按鈕點擊，為 `#modalOverlay` 加上 `active` Class（顯示模糊背景與對話框）。
- **關閉觸發點**：`#closeModal` 按鈕、`#closeModalBtn` 按鈕或點擊背景遮罩外區域，移除 `active` Class。

### 3. 滑出式側邊欄 (Offcanvas)
- **開啟觸發點**：`#openOffcanvas` 按鈕點擊，為 `#offcanvasElement` 加上 `active` Class（向左滑出 320px 側邊視窗）。
- **關閉觸發點**：`#closeOffcanvas` 按鈕點擊，移除 `active` Class。
