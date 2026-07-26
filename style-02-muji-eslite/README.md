# Style 02: 無印良品 / 誠品書店風格 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的無印良品與誠品書店和風人文美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--mj-color-wood`: `#3d342d` (原木深褐 Primary，用於主要文字、標題與主按鈕)
- `--mj-color-sand`: `#7a6b5d` (和風砂色 Secondary，用於輔助說明與導覽連結)
- `--mj-color-matcha`: `#5c6b57` (抹茶青 Info，用於系統說明與人文通知)
- `--mj-color-bamboo`: `#487258` (竹翠綠 Success，用於成功與完畢狀態)
- `--mj-color-persimmon`: `#d96b43` (柿子橘 Warning，用於提醒與名額少許)
- `--mj-color-vermilion`: `#b83b33` (朱紅 Error，用於警告與停止)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.mj-container`: 1140px 最大寬度居中容器。
- `.mj-grid`, `.mj-col-12`, `.mj-col-6`, `.mj-col-4`, `.mj-col-3`: 幾何響應式網格。
- `.mj-navbar`, `.mj-nav-brand`, `.mj-nav-links`, `.mj-nav-link`: 木質調導覽列系統。
- `.mj-hero`, `.mj-hero-title`, `.mj-hero-subtitle`: 雜誌感留白 Hero Section。
- `.mj-btn`, `.mj-btn-primary`, `.mj-btn-outline`: 和風樸實按鈕（4px 軟圓角）。
- `.mj-badge`: 簡潔標籤組件。
- `.mj-swatch-box`, `.mj-bg-wood`, `.mj-bg-sand`, `.mj-bg-matcha`, `.mj-bg-bamboo`, `.mj-bg-persimmon`, `.mj-bg-vermilion`: 專屬配色展示方塊。
- `.mj-section`, `.mj-section-title`: 具備深褐左側 Accent 邊條的章節標題。
- `.mj-card`: 淺木質卡片 (`#f4eee6`)。
- `.mj-form-group`, `.mj-input`, `.mj-select`, `.mj-textarea`: 和風質感表單元件。
- `.mj-accordion-item`, `.mj-accordion-header`, `.mj-accordion-body`: 折疊解答組件。
- `.mj-modal-overlay`, `.mj-modal`: 溫暖木質調 Modal 對話框。
- `.mj-offcanvas`: 側邊閱覽面板。
- `.mj-table`: 簡約書目表格。
- `.mj-font-serif`: 套用 Noto Serif TC 明朝體襯線字。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄所有的動態互動邏輯皆獨立存於 `script.js` 檔案中：

1. **手風琴解答折疊 (Accordion)**：
   - 監聽 `.mj-accordion-header` 的點擊事件，自動對 `.mj-accordion-item` 切換 `open` Class。
2. **選書 Modal 對話視窗**：
   - 點擊 `#openModal` 開啟 `#modalOverlay` (`active` Class)，點擊 `#closeModal` 或 `#closeModalBtn` 時關閉對話框。
3. **側邊閱覽視窗 (Offcanvas)**：
   - 點擊 `#openOffcanvas` 向左滑出 `#offcanvasElement` 側邊面板，點擊 `#closeOffcanvas` 收回。
