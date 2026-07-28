# Style 28: 美式手作皮件 / 獨立精釀工坊 (Craft Leather & Brewery)

手作皮件工坊與獨立精釀啤酒廠質感，粗糙帆布黃背景、深馬鞍棕皮革色與黃銅鉚釘質感細節。

---

## 🎨 色彩系統 (Color Palette)

- **粗糙帆布黃 (Background)**: `#ece2d0` (`--lea-bg`)
- **深馬鞍棕 (Primary)**: `#42281d` (`--lea-color-primary`)
- **精釀琥珀黃 (Accent)**: `#bf6900` (`--lea-color-accent`)
- **黃銅金 (Secondary)**: `#a57548` (`--lea-color-secondary`)
- **工業海軍藍 (Info)**: `#3d5a80` (`--lea-color-info`)
- **啤酒花綠 (Success)**: `#4f772d` (`--lea-color-success`)
- **熟皮革黃 (Warning)**: `#d4a373` (`--lea-color-warning`)
- **櫻桃黑啤紅 (Error)**: `#9e2a2b` (`--lea-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.lea-container` - 響應式容器 (max-width: 1140px)
- `.lea-navbar` - 馬鞍棕鋼印風導覽列
- `.lea-hero` - 硬派手作 Hero 區塊
- `.lea-card` - 雙層縫線視覺邊框卡片 (`border: 2px dashed #42281d`, `outline: 2px solid #42281d`)
- `.lea-badge` - 金屬鉚釘圓扣樣式 Badge
- `.lea-btn` (`.lea-btn-primary`, `.lea-btn-accent`) - 復古重硬度按鈕
- `.lea-input` / `.lea-select` / `.lea-textarea` - 皮革風格鋼印表單
- `.lea-modal` / `.lea-offcanvas` - 硬派帆布與馬鞍棕彈窗及抽屜

---

## 📜 JavaScript (script.js) 功能說明

- 響應式導覽列開啟/關閉
- Accordion 展開切換
- Tabs 頁籤切換
- Modal 及 Offcanvas 控制
- Range 滑桿數值即時顯示 (IBU)
