# Style 25: 未來科技極簡 / 電動車跑格 (Futuristic Aero Minimalism)

極簡航太與高級電動車（如 Polestar/Tesla）官網質感，霧面銀灰背景、極細 1px 亮線與流線型微圓角（20px）。

---

## 🎨 色彩系統 (Color Palette)

- **鈦空銀灰 (Background)**: `#e2e8f0` (`--aer-bg`)
- **陽極氧化黑 (Primary)**: `#0f172a` (`--aer-color-primary`)
- **航太冷極藍 (Accent)**: `#38bdf8` (`--aer-color-accent`)
- **電量亮綠 (Success)**: `#10b981` (`--aer-color-success`)
- **霧面鈦銀 (Secondary)**: `#94a3b8` (`--aer-color-secondary`)
- **深極銀藍 (Info)**: `#0284c7` (`--aer-color-info`)
- **警示琥珀 (Warning)**: `#f59e0b` (`--aer-color-warning`)
- **雷射過載紅 (Error)**: `#ef4444` (`--aer-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.aer-container` - 響應式容器 (max-width: 1140px)
- `.aer-navbar` - 霧面半透明導覽列 (backdrop-filter: blur(12px))
- `.aer-hero` - 流線科技感 Hero 區塊
- `.aer-card` - 20px 圓角與極細 1px 邊框卡片
- `.aer-btn` (`.aer-btn-primary`, `.aer-btn-accent`, `.aer-btn-outline`) - 流線極簡按鈕
- `.aer-switch` - 流線金屬圓點 Toggle 開關
- `.aer-progress` / `.aer-progress-bar` - 極細冷光調效進度條
- `.aer-modal` / `.aer-offcanvas` - 科技感 20px 圓角彈跳視窗與抽屜

---

## 📜 JavaScript (script.js) 功能說明

- 響應式導覽列開啟/關閉
- Accordion 展開與收合
- Tabs 頁籤切換
- Modal 及 Offcanvas 控制
- Range 限速滑桿與動態數據同步
