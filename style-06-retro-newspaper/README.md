# Style 06: 美式復古報紙 / 舊時代經典雜誌 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的美式舊報紙與經典報刊美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--np-color-ink`: `#111111` (深黑報墨 Primary，用於主要標題、邊框與按鈕)
- `--np-color-paper`: `#f3ebd7` (米黃舊紙 Background)
- `--np-color-aged`: `#eae0c8` (陳年舊紙 Surface)
- `--np-color-lead`: `#444444` (鉛字灰 Secondary，用於次要導讀內文)
- `--np-color-stamp`: `#8c1d18` (郵戳紅 Accent/Error，用於特別報導與印章標示)
- `--np-color-navy`: `#1a3048` (經典海藍 Info，用於電報資訊)
- `--np-color-press`: `#284d2a` (活字綠 Success，用於出版確認)
- `--np-color-amber`: `#996317` (琥珀金 Warning，用於市場休市與警告)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.np-container`: 1180px 報刊欄位置中容器。
- `.np-grid`, `.np-col-12`, `.np-col-6`, `.np-col-4`, `.np-col-3`: 報紙專題直欄網格。
- `.np-navbar`, `.np-nav-brand`, `.np-nav-links`, `.np-nav-link`: 具備 `4px double` 雙線底邊框的復古導覽列。
- `.np-hero`, `.np-hero-title`, `.np-hero-subtitle`: 報紙頭條 Hero 區塊。
- `.np-btn`, `.np-btn-primary`: 直角實線報墨按鈕。
- `.np-badge`: 直角郵戳風格標籤。
- `.np-swatch-box`, `.np-bg-ink`, `.np-bg-lead`, `.np-bg-stamp`, `.np-bg-navy`, `.np-bg-press`, `.np-bg-amber`: 專屬報刊配色展示方塊。
- `.np-section`, `.np-section-title`: 雙線章節分隔與襯線體標題。
- `.np-card`: 舊紙張背景邊框專題卡片。
- `.np-form-group`, `.np-input`, `.np-select`, `.np-textarea`: 報紙分類廣告輸入框。
- `.np-accordion-item`, `.np-accordion-header`, `.np-accordion-body`: 讀者投書摺疊元件。
- `.np-modal-overlay`, `.np-modal`: 雙線邊框新聞稿 Modal 對話視窗。
- `.np-offcanvas`: 側邊欄位面板。
- `.np-table`: 實線股市與金價紀錄表格。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄所有 JS 邏輯均已單獨提取至 `script.js`：

1. **讀者投書摺疊 (Accordion)**：
   - 監聽 `.np-accordion-header` 點擊，切換 `.np-accordion-item` 的 `open` 狀態。
2. **新聞稿對話框 (Modal)**：
   - `#openModal` 觸發開啟 `#modalOverlay` (`active` Class)，`#closeModal` 及 `#closeModalBtn` 負責關閉。
3. **側邊報刊選單 (Offcanvas)**：
   - `#openOffcanvas` 向左開啟 `#offcanvasElement`，`#closeOffcanvas` 收起面板。
