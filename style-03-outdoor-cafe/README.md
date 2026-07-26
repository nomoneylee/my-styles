# Style 03: 戶外露營品牌 / 文青咖啡廳菜單風格 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的戶外露營與文青手沖咖啡大地色系美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--cw-color-olive`: `#3a4d39` (露營橄欖綠 Primary，用於頂導覽、Hero 主區與標題邊框)
- `--cw-color-orange`: `#c86d3b` (暗橘暖色 Accent，用於重點主按鈕與標籤)
- `--cw-color-earth`: `#24201c` (炭土黑 Dark，用於主要文字與強烈幾何邊框)
- `--cw-color-lake`: `#3b677a` (湖水藍 Info，用於資訊與課程通知)
- `--cw-color-forest`: `#27522d` (森林深綠 Success，用於安全與成功狀態)
- `--cw-color-rust`: `#9e3223` (鐵鏽紅 Error，用於山區氣溫與危險警訊)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.cw-container`: 1160px 戶外美學置中容器。
- `.cw-grid`, `.cw-col-12`, `.cw-col-6`, `.cw-col-4`, `.cw-col-3`: 重磅直角網格系統。
- `.cw-navbar`, `.cw-nav-brand`, `.cw-nav-links`, `.cw-nav-link`: 橄欖綠硬派導覽列。
- `.cw-hero`, `.cw-hero-title`, `.cw-hero-subtitle`: 戶外大地風格 Hero Section。
- `.cw-btn`, `.cw-btn-primary`, `.cw-btn-dark`, `.cw-btn-outline`: 樸實直角按鈕（3px 小圓角與黑框）。
- `.cw-badge`: 大地色直角標籤。
- `.cw-swatch-box`, `.cw-bg-olive`, `.cw-bg-orange`, `.cw-bg-earth`, `.cw-bg-lake`, `.cw-bg-forest`, `.cw-bg-rust`: 專屬配色展示方塊。
- `.cw-section`, `.cw-section-title`: 搭配暗橘底部強調線的章節標題。
- `.cw-card`: 淺沙色裝備與菜單卡片 (`#f2efe9`)。
- `.cw-form-group`, `.cw-input`, `.cw-select`, `.cw-textarea`: 重框戶外表單輸入框。
- `.cw-accordion-item`, `.cw-accordion-header`, `.cw-accordion-body`: 營區須知摺疊元件。
- `.cw-modal-overlay`, `.cw-modal`: 炭土黑邊框手沖菜單 Modal 對話框。
- `.cw-offcanvas`: 側邊裝備選單。
- `.cw-table`: 炭土黑全邊框規格表格。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄動態腳本完全獨立於 `script.js` 檔案：

1. **營區須知折疊 (Accordion)**：
   - 監聽 `.cw-accordion-header` 點擊，控制父層 `.cw-accordion-item` 切換 `open` Class。
2. **手沖菜單 Modal**：
   - `#openModal` 開啟炭土黑邊框 `#modalOverlay` (`active` Class)，`#closeModal` 及 `#closeModalBtn` 關閉視窗。
3. **側邊裝備選單 (Offcanvas)**：
   - `#openOffcanvas` 向左開關 `#offcanvasElement`。
