# Style 08: 建築事務所 / 日系現代設計品牌 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的水泥白背景與 1px 精細幾何線條日系現代建築美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--ar-color-charcoal`: `#18191b` (極簡黑 Primary，用於大號輕量標題與 1px 細線邊框)
- `--ar-bg-main`: `#f0f2f5` (水泥白 Base)
- `--ar-bg-surface`: `#f8f9fa` (精密面板底)
- `--ar-color-steel`: `#646a73` (鋼鐵灰 Secondary，用於精細微縮內文)
- `--ar-color-glass`: `#3b82f6` (玻璃藍 Info，用於建築模型與 CAD 圖層)
- `--ar-color-mint`: `#10b981` (綠建築 Success，用於永續建築認證)
- `--ar-color-amber`: `#f59e0b` (警戒黃 Warning，用於施工與尺寸誤差提醒)
- `--ar-color-crimson`: `#ef4444` (標記紅 Accent/Error，用於建築切面與關鍵標註)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.ar-container`: 1160px 精密幾何置中容器。
- `.ar-grid`, `.ar-col-12`, `.ar-col-6`, `.ar-col-4`, `.ar-col-3`: 幾何比例強烈的無陰影網格。
- `.ar-navbar`, `.ar-nav-brand`, `.ar-nav-links`, `.ar-nav-link`: 水泥白毛玻璃配合 1px 線條邊框的導覽列。
- `.ar-hero`, `.ar-hero-title`, `.ar-hero-subtitle`: 300 字重超大號標題與大留白 Hero Section。
- `.ar-btn`, `.ar-btn-primary`, `.ar-btn-outline`: 1px 黑色精細邊框按鈕（零陰影 `box-shadow: none`）。
- `.ar-badge`: 直角極細字級標籤。
- `.ar-swatch-box`, `.ar-bg-charcoal`, `.ar-bg-steel`, `.ar-bg-glass`, `.ar-bg-mint`, `.ar-bg-amber`, `.ar-bg-crimson`: 專屬建築幾何配色展示方塊。
- `.ar-section`, `.ar-section-title`: 1px 底邊框與輕量大標題章節。
- `.ar-card`: 1px 精細邊框建築作品卡片。
- `.ar-form-group`, `.ar-input`, `.ar-select`, `.ar-textarea`: 幾何線條建築查詢輸入欄位。
- `.ar-accordion-item`, `.ar-accordion-header`, `.ar-accordion-body`: 結構設計流程摺疊面板。
- `.ar-modal-overlay`, `.ar-modal`: 零陰影 1px 精密對話框。
- `.ar-offcanvas`: 側邊幾何目錄面板。
- `.ar-table`: 1px 細線建築規格數據表格。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄 JS 腳本獨立存放於 `script.js`：

1. **設計流程摺疊 (Accordion)**：
   - 監聽 `.ar-accordion-header` 點擊，對 `.ar-accordion-item` 切換 `open` 狀態。
2. **空間模型視窗 (Modal)**：
   - `#openModal` 觸發開啟零陰影 1px 邊框 Modal `#modalOverlay` (`active` Class)，`#closeModal` 及 `#closeModalBtn` 負責關閉。
3. **側邊幾何目錄 (Offcanvas)**：
   - `#openOffcanvas` 向左開啟 `#offcanvasElement`，`#closeOffcanvas` 收合面板。
