# Style 04: 高檔飯店 / 精品品牌風格 (Pure Vanilla CSS & JS)

本目錄包含完全自建（零 Bootstrap 5 依賴）的高檔飯店與精品品牌尊榮美學設計系統。

---

## 🎨 專屬配色系統 Tokens (Color Palette)

- `--lx-color-emerald`: `#141c17` (深墨綠 Primary，沉穩奢華基調)
- `--lx-color-gold`: `#c5a059` (皇家金 Accent，用於標題、重要按鈕與精品邊框)
- `--lx-color-champagne`: `#e6d5c3` (香檳奶茶 Secondary，用於導覽連結與精細次要內文)
- `--lx-color-pearl`: `#f4efe6` (珍珠白 Text，用於主要內文)
- `--lx-color-sapphire`: `#2d4a60` (深藍寶石 Info，用於系統說明與尊榮提示)
- `--lx-color-jade`: `#2a5c43` (玉石綠 Success，用於確認與尊享訂位成功)
- `--lx-color-bronze`: `#b3823e` (古銅 Warning，用於客滿提醒)
- `--lx-color-burgundy`: `#7a1f29` (勃根地紅 Error，用於系統錯誤與私密視窗)

---

## 🛠️ CSS Class 類別清單與用途說明

- `.lx-container`: 1140px 精品視覺置中容器。
- `.lx-grid`, `.lx-col-12`, `.lx-col-6`, `.lx-col-4`, `.lx-col-3`: 經典比例網格系統。
- `.lx-navbar`, `.lx-nav-brand`, `.lx-nav-links`, `.lx-nav-link`: 深墨綠搭配 1px 金線毛玻璃導覽列。
- `.lx-hero`, `.lx-hero-title`, `.lx-hero-subtitle`: 沉穩優雅漸層 Hero Section。
- `.lx-btn`, `.lx-btn-primary`, `.lx-btn-outline`: 皇家金邊框精品按鈕 (2px 微圓角)。
- `.lx-badge`: 尊榮金屬感標籤。
- `.lx-swatch-box`, `.lx-bg-gold`, `.lx-bg-champagne`, `.lx-bg-sapphire`, `.lx-bg-jade`, `.lx-bg-bronze`, `.lx-bg-burgundy`: 奢華配色展示方塊。
- `.lx-section`, `.lx-section-title`: 襯線體金色置中章節標題。
- `.lx-card`: 奢華卡片 (`#1c2620`)，懸停時亮起皇家金邊框。
- `.lx-form-group`, `.lx-input`, `.lx-select`, `.lx-textarea`: 金色 Focus 狀態表單控制項。
- `.lx-accordion-item`, `.lx-accordion-header`, `.lx-accordion-body`: 尊榮答疑摺疊面板。
- `.lx-modal-overlay`, `.lx-modal`: 皇家金細邊框 Modal 對話框。
- `.lx-offcanvas`: VIP 側邊預約視窗。
- `.lx-table`: 經典金線資料表格。

---

## 📜 JavaScript (`script.js`) 使用說明

本目錄包含獨存於 `script.js` 的動態控制腳本：

1. **尊榮答疑折疊 (Accordion)**：
   - 監聽 `.lx-accordion-header` 點擊事件，對 `.lx-accordion-item` 切換 `open` Class。
2. **VIP 私密 Modal 對話框**：
   - `#openModal` 開啟 `#modalOverlay` (`active` Class)，`#closeModal` 及 `#closeModalBtn` 關閉視窗。
3. **VIP 側邊預約視窗 (Offcanvas)**：
   - `#openOffcanvas` 向左開啟 `#offcanvasElement`，`#closeOffcanvas` 收合面板。
