# Style 24: 包浩斯再造 / 現代幾何構圖 (Neo-Geometric Bauhaus)

經典包浩斯現代化，運用強烈的 45 度斜角切割、半圓形與正方形裝飾區塊，搭配高彩度對比色塊。所有元件強制歸零無圓角 (`border-radius: 0`)。

---

## 🎨 色彩系統 (Color Palette)

- **畫布特灰白 (Background)**: `#f2ede4` (`--bau-bg`)
- **構圖剛硬黑 (Primary)**: `#1a1a1b` (`--bau-color-primary`)
- **新包浩斯紅 (Accent)**: `#e63946` (`--bau-color-accent`)
- **電光黃 (Secondary)**: `#ffb703` (`--bau-color-secondary`)
- **鈷藍色 (Info)**: `#1d3557` (`--bau-color-info`)
- **幾何綠 (Success)**: `#2a9d8f` (`--bau-color-success`)
- **幾何橙 (Warning)**: `#f4a261` (`--bau-color-warning`)
- **建築深紅 (Error)**: `#d62828` (`--bau-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.bau-container` - 響應式容器 (max-width: 1160px)
- `.bau-navbar` - 3px/4px 粗黑邊框幾何導覽列
- `.bau-hero` / `.bau-hero-bg-accent` - 帶有斜切色塊的 Hero 區
- `.bau-btn` (`.bau-btn-accent`, `.bau-btn-info`, `.bau-btn-secondary`) - 無圓角 + 硬邊陰影按鈕
- `.bau-card` - 3px 重線條矩形邊框卡片
- `.bau-input` / `.bau-select` / `.bau-textarea` - 幾何表單
- `.bau-badge` - 矩形鮮豔標籤
- `.bau-modal` / `.bau-offcanvas` - 剛硬方塊結構彈窗與側邊抽屜

---

## 📜 JavaScript (script.js) 功能說明

- 響應式選單切換
- Accordion 展開/收合
- Tabs 頁籤切換
- Modal 及 Offcanvas 控制
- Range 滑桿角度值實聯動
