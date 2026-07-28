# Style 22: 包裝設計 / 標籤印刷風 (Label & Packaging)

文創商品包裝與實體條碼標籤風格，元件自帶虛線裁切邊框（dashed）、條碼裝飾圖示與打孔圓洞效果。

---

## 🎨 色彩系統 (Color Palette)

- **未塗布牛皮紙灰 (Background)**: `#e9e7e1` (`--lbl-bg`)
- **印表機碳黑 (Primary)**: `#1e1e1e` (`--lbl-color-primary`)
- **膠帶螢光橘 (Accent)**: `#ff5722` (`--lbl-color-accent`)
- **警示標籤黃 (Warning)**: `#f3b700` (`--lbl-color-warning`)
- **運送藍標 (Info)**: `#0288d1` (`--lbl-color-info`)
- **檢驗合格綠 (Success)**: `#2e7d32` (`--lbl-color-success`)
- **易碎警戒紅 (Error)**: `#d32f2f` (`--lbl-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.lbl-container` - 響應式容器 (max-width: 1140px)
- `.lbl-navbar` / `.lbl-brand` - 實體標籤與卡紙質感 Navbar
- `.lbl-hero` / `.lbl-punch-hole` / `.lbl-barcode` - 包含打孔洞與條碼視覺的 Hero
- `.lbl-card` - 2px dashed 虛線裁切邊框卡片
- `.lbl-badge` - 折角與打孔貼紙樣式 Badge
- `.lbl-input` / `.lbl-select` / `.lbl-textarea` - 工業包裝印刷欄位
- `.lbl-accordion-header` / `.lbl-tab-btn` - 實體標籤感手風琴與分頁組件
- `.lbl-modal` / `.lbl-offcanvas` - 硬派膠帶與厚卡紙跳窗

---

## 📜 JavaScript (script.js) 功能說明

- Navbar 響應式開合
- Accordion 展開切換
- Tabs 頁籤切換
- Modal / Offcanvas 開關
- Range 滑桿數值同步
