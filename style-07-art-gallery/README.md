# Style 07: 當代藝廊 / 當代美術館文宣風格 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的大面積純白留白與醒目黑體 Swiss 當代藝廊美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--gl-color-stark`: `#000000` (純黑 Primary，用於主標題、強烈外框與黑底按鈕)
- `--gl-color-blank`: `#ffffff` (純白 Background，大面積留白空間)
- `--gl-color-subtle`: `#666666` (冷灰 Secondary，用於次要資訊標籤)
- `--gl-color-alert`: `#ff0033` (強烈紅 Accent/Error，用於藝術展覽重點與警示)
- `--gl-color-cyan`: `#0077ff` (當代藍 Info，用於數位展覽與資訊)
- `--gl-color-neon`: `#00cc66` (酷綠 Success，用於售票成功與展出中)
- `--gl-color-yellow`: `#ffcc00` (展覽黃 Warning，用於即將結束展覽)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.gl-container`: 1240px 大寬度大留白置中容器。
- `.gl-grid`, `.gl-col-12`, `.gl-col-6`, `.gl-col-4`, `.gl-col-3`: Swiss 國際字體風格強烈對比網格。
- `.gl-navbar`, `.gl-nav-brand`, `.gl-nav-links`, `.gl-nav-link`: 純白底帶有 2px 實線黑邊框的頂導覽列。
- `.gl-hero`, `.gl-hero-title`, `.gl-hero-subtitle`: 巨大醒目黑體 (`clamp(3.2rem, 9vw, 7.5rem)`) Hero 區塊。
- `.gl-btn`, `.gl-btn-primary`: 直角黑白大對比酷感按鈕 (`font-weight: 900`)。
- `.gl-badge`: 極簡直角黑體標籤。
- `.gl-swatch-box`, `.gl-bg-stark`, `.gl-bg-subtle`, `.gl-bg-alert`, `.gl-bg-cyan`, `.gl-bg-neon`, `.gl-bg-yellow`: 專屬當代藝廊配色展示方塊。
- `.gl-section`, `.gl-section-title`: 實線頂邊框與瑞士黑體大章節標題。
- `.gl-card`: 極簡 2px 黑框展覽卡片。
- `.gl-form-group`, `.gl-input`, `.gl-select`, `.gl-textarea`: 粗黑框強對比表單輸入框。
- `.gl-accordion-item`, `.gl-accordion-header`, `.gl-accordion-body`: 當代藝廊問答摺疊面板。
- `.gl-modal-overlay`, `.gl-modal`: 高對比純黑遮罩與白框 Modal 對話視窗。
- `.gl-offcanvas`: 側邊展覽選單面板。
- `.gl-table`: 純黑實線藝廊展品目錄表格。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄 JS 邏輯完全獨立於 `script.js`：

1. **藝廊政策摺疊 (Accordion)**：
   - 監聽 `.gl-accordion-header` 點擊，對 `.gl-accordion-item` 切換 `open` 狀態。
2. **藝術家對話框 (Modal)**：
   - `#openModal` 開啟高對比黑底 Modal `#modalOverlay` (`active` Class)，`#closeModal` 及 `#closeModalBtn` 負責關閉。
3. **側邊藝廊面板 (Offcanvas)**：
   - `#openOffcanvas` 向左開啟 `#offcanvasElement`，`#closeOffcanvas` 收合面板。
