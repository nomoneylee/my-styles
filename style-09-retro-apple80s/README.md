# Style 09: 80 年代 Apple 電腦 / 經典復古電子設備 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的 80 年代早期 Apple Macintosh 經典 Bevel 立體雙層邊框與點陣美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--mc-color-dark`: `#1b2419` (CRT 墨黑 Primary，用於系統主要文字與黑底按鈕)
- `--mc-bg-main`: `#b8c4b2` (灰綠色 Vintage Apple Base)
- `--mc-bg-surface`: `#cad4c4` (暖灰視窗 Surface)
- `--mc-color-apple`: `#386828` (CRT 螢光綠 Accent，用於螢幕螢光標題與重點按鈕)
- `--mc-color-steel`: `#485444` (輔助灰 Secondary，用於輔助說明)
- `--mc-color-cyan`: `#286868` (系統藍 Info，用於 AppleLink 資訊)
- `--mc-color-amber`: `#8a6c1e` (CRT 琥珀金 Warning，用於系統警示)
- `--mc-color-bomb`: `#8a221e` (系統錯誤紅 Error，用於 System Bomb 錯誤對話框)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.mc-container`: 1140px 復古電腦螢幕居中容器。
- `.mc-grid`, `.mc-col-12`, `.mc-col-6`, `.mc-col-4`, `.mc-col-3`: 經典 80 年代電腦視窗網格。
- `.mc-navbar`, `.mc-nav-brand`, `.mc-nav-links`, `.mc-nav-link`: 雙層立體 Bevel 邊框 (`border-top: 3px solid #e2ebd8; border-bottom: 3px solid #7a8674`) 的 Mac 系統選單。
- `.mc-hero`, `.mc-hero-title`, `.mc-hero-subtitle`: CRT 螢光綠大標題與 Bevel 視窗 Hero Section。
- `.mc-btn`, `.mc-btn-primary`: 經典立體 Bevel 點擊效果按鈕（點擊時邊框暗亮切換與 1px 位移）。
- `.mc-badge`: 點陣字體 `VT323` 標籤。
- `.mc-swatch-box`, `.mc-bg-dark`, `.mc-bg-apple`, `.mc-bg-steel`, `.mc-bg-cyan`, `.mc-bg-amber`, `.mc-bg-bomb`: 專屬 80s CRT 配色展示方塊。
- `.mc-section`, `.mc-section-title`: 虛線分隔章節與點陣字體邊框標題。
- `.mc-card`: 暖灰立體 Bevel 視窗卡片。
- `.mc-form-group`, `.mc-input`, `.mc-select`, `.mc-textarea`: 凹陷式 Bevel 表單輸入框。
- `.mc-accordion-item`, `.mc-accordion-header`, `.mc-accordion-body`: Macintosh 系統問答摺疊面板。
- `.mc-modal-overlay`, `.mc-modal`: 經典 System Alert Dialog 彈窗對話框。
- `.mc-offcanvas`: 側邊 Control Panel 控制面板。
- `.mc-table`: 實線 80 年代記憶體規格數據表格。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄動態腳本完全獨立於 `script.js` 檔案中：

1. **Mac 系統解答折疊 (Accordion)**：
   - 監聽 `.mc-accordion-header` 點擊，對 `.mc-accordion-item` 切換 `open` 狀態。
2. **System Alert Dialog (Modal)**：
   - `#openModal` 觸發開啟經典對話視窗 `#modalOverlay` (`active` Class)，`#closeModal` 及 `#closeModalBtn` 負責關閉。
3. **Control Panel 面板 (Offcanvas)**：
   - `#openOffcanvas` 向左開啟 `#offcanvasElement`，`#closeOffcanvas` 收合面板。
