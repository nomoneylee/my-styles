# Style 30: 當代展覽膠囊 / 複合展演空間 (Capsule Exhibition Space)

美術館售票處與複合式展演空間，採用巨大的「半圓膠囊型（border-radius: 999px）」區塊切分與極高彩度碰撞。

---

## 🎨 色彩系統 (Color Palette)

- **展演明白 (Background)**: `#fafafa` (`--cap-bg`)
- **膠囊深紫 (Primary)**: `#2b124c` (`--cap-color-primary`)
- **高彩螢光黃 (Accent)**: `#e2f952` (`--cap-color-accent`)
- **電磁亮藍 (Info)**: `#5246e2` (`--cap-color-info`)
- **展演桃粉 (Secondary)**: `#ff6b8b` (`--cap-color-secondary`)
- **螢光嫩綠 (Success)**: `#00d284` (`--cap-color-success`)
- **太陽亮黃 (Warning)**: `#ffaa00` (`--cap-color-warning`)
- **警示霓紅 (Error)**: `#ff3366` (`--cap-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.cap-container` - 響應式容器 (max-width: 1160px)
- `.cap-navbar` / `.cap-navbar-inner` - 懸浮於頂部的 Full-Pill 膠囊導覽列
- `.cap-hero` / `.cap-hero-banner` - 膠囊深紫漸層高彩 Hero
- `.cap-card` - 36px 膠囊弧度邊框卡片
- `.cap-btn` (`.cap-btn-accent`, `.cap-btn-info`, `.cap-btn-outline`) - Full-Pill 膠囊圓角按鈕
- `.cap-input` / `.cap-select` - Full-Pill 999px 膠囊邊框表單
- `.cap-badge` - 膠囊造型鮮豔標籤
- `.cap-modal` / `.cap-offcanvas` - 36px 大圓角膠囊彈窗與購票抽屜

---

## 📜 JavaScript (script.js) 功能說明

- 響應式導覽列開啟/關閉
- Accordion 膠囊手風琴展開/收合
- Tabs 頁籤切換
- Modal 及 Offcanvas 控制
- Range 滑桿頻率數值即時顯示
