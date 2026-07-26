# Style 10: 潮流品牌官網 / 音樂節宣傳海報風格 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的高對比潮流品牌與音樂節宣傳海報美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--st-color-forest`: `#0f2e1e` (濃墨綠 Primary，用於頂導覽列、章節標題塊與重點按鈕)
- `--st-color-espresso`: `#381c0d` (濃褐色 Secondary，用於次要標題與特別標籤)
- `--st-color-black`: `#000000` (極致黑 Border & Shadow，用於 `4px solid` 粗邊框與 `5px` 實心邊框陰影)
- `--st-color-danger`: `#ff0044` (高烈度警示紅 Accent/Error，用於限量搶購與緊急警示)
- `--st-color-neon`: `#00e676` (螢光綠 Info，用於線上即時狀態與訊息)
- `--st-color-warning`: `#ffaa00` (海報黃 Warning，用於門票即將完售提醒)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.st-container`: 1240px 潮流海報寬度置中容器。
- `.st-grid`, `.st-col-12`, `.st-col-6`, `.st-col-4`, `.st-col-3`: 粗線大張力網格系統。
- `.st-navbar`, `.st-nav-brand`, `.st-nav-links`, `.st-nav-link`: 濃墨綠搭配 4px 實線黑邊框的潮流導覽列。
- `.st-ticker`, `.st-ticker-content`: 動態跑馬燈廣播 Banner（無限循環字幕）。
- `.st-hero`, `.st-hero-title`, `.st-hero-subtitle`: 巨型粗暴黑體標題 (`clamp(3.5rem, 11vw, 8.5rem)`) Hero 區塊。
- `.st-btn`, `.st-btn-primary`: 具備 `5px 5px 0px #000` 黑色實心陰影的潮流點擊按鈕。
- `.st-badge`: 粗黑框海報標籤。
- `.st-swatch-box`, `.st-bg-forest`, `.st-bg-espresso`, `.st-bg-danger`, `.st-bg-neon`, `.st-bg-warning`, `.st-bg-black`: 專屬潮流高對比配色展示方塊。
- `.st-section`, `.st-section-title`: 濃墨綠黑框高凸起章節標題。
- `.st-card`: 粗黑框白底潮牌與演出卡片。
- `.st-form-group`, `.st-input`, `.st-select`, `.st-textarea`: 粗黑框高強度表單輸入欄位。
- `.st-accordion-item`, `.st-accordion-header`, `.st-accordion-body`: 粗黑框問答摺疊面板。
- `.st-modal-overlay`, `.st-modal`: 8px 黑色實心陰影潮流 Modal 對話視窗。
- `.st-offcanvas`: VIP 側邊選單面板。
- `.st-table`: 粗黑邊框 Merchandise 周邊售價表格。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄 JS 腳本獨立存放於 `script.js`：

1. **問答與須知摺疊 (Accordion)**：
   - 監聽 `.st-accordion-header` 點擊，對 `.st-accordion-item` 切換 `open` 狀態。
2. **Lineup 潮流 Modal 對話框**：
   - `#openModal` 觸發開啟具備 8px 黑色實心陰影的 Modal `#modalOverlay` (`active` Class)，`#closeModal` 及 `#closeModalBtn` 負責關閉。
3. **VIP 側邊面板 (Offcanvas)**：
   - `#openOffcanvas` 向左開啟 `#offcanvasElement`，`#closeOffcanvas` 收合面板。
