# Style 05: 帶有手作感、溫馨繪本風格 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的奶油黃與暗棕手繪感繪本美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--pb-color-brown`: `#4a3f35` (暗棕手繪 Primary，用於主要文字與微凸手繪邊框，嚴禁純黑)
- `--pb-color-strawberry`: `#e07a5f` (溫馨草莓紅 Accent，用於主要按鈕與重點標籤)
- `--pb-color-mint`: `#709775` (森林薄荷綠 Info，用於手作類別與提示)
- `--pb-color-honey`: `#d4a373` (甜蜜蜂蜜黃 Success，用於成功與烘焙完成)
- `--pb-color-terracotta`: `#bc4749` (溫馨磚紅 Error，用於警告與停止)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.pb-container`: 1140px 圓潤手作邊距置中容器。
- `.pb-grid`, `.pb-col-12`, `.pb-col-6`, `.pb-col-4`, `.pb-col-3`: 彈性手繪感響應式網格系統。
- `.pb-navbar`, `.pb-nav-brand`, `.pb-nav-links`, `.pb-nav-link`: 淺奶茶底帶有下陰影的手作導覽列。
- `.pb-hero`, `.pb-hero-title`, `.pb-hero-subtitle`: 具備 3px 暗棕線條與 6px 陰影的繪本 Hero 區塊。
- `.pb-btn`, `.pb-btn-primary`: 不對稱手繪圓角按鈕（含 `3px 3px 0px #4a3f35` 手繪微凸點擊立體陰影）。
- `.pb-badge`: 手作可愛圓角標籤。
- `.pb-swatch-box`, `.pb-bg-brown`, `.pb-bg-strawberry`, `.pb-bg-mint`, `.pb-bg-honey`, `.pb-bg-terracotta`: 專屬手繪配色展示方塊。
- `.pb-section`, `.pb-section-title`: 虛線分隔線與微凸標題區塊。
- `.pb-card`: 純白背景微凸邊框繪本故事卡片。
- `.pb-form-group`, `.pb-input`, `.pb-select`, `.pb-textarea`: 手繪立體 Focus 效果輸入控制項。
- `.pb-accordion-item`, `.pb-accordion-header`, `.pb-accordion-body`: 圓角手作摺疊解答元件。
- `.pb-modal-overlay`, `.pb-modal`: 20px 軟圓角微凸手繪 Modal 對話視窗。
- `.pb-offcanvas`: 側邊故事選單面板。
- `.pb-table`: 暗棕邊框手作出版表格。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄互動邏輯單獨存儲於 `script.js`：

1. **手作問答摺疊 (Accordion)**：
   - 監聽 `.pb-accordion-header` 點擊事件，對 `.pb-accordion-item` 切換 `open` Class。
2. **故事 Modal 彈窗**：
   - `#openModal` 開啟微凸對話框 `#modalOverlay` (`active` Class)，`#closeModal` 及 `#closeModalBtn` 關閉視窗。
3. **側邊故事選單 (Offcanvas)**：
   - `#openOffcanvas` 向左滑出 `#offcanvasElement`，`#closeOffcanvas` 收起選單。
