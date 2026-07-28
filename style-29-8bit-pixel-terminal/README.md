# Style 29: 復古 Apple II / 8 位元點陣視窗 (8-Bit Pixel Terminal)

80 年代 Apple II / Commodore 64 經典綠螢幕終端機，綠黑高對比、像素點陣字體與 Scanline 掃描線背景紋理。

---

## 🎨 色彩系統 (Color Palette)

- **終端機深黑 (Background / Primary)**: `#0c0d0d` (`--pix-color-primary` / `--pix-bg`)
- **磷光綠 (Accent)**: `#00ff66` (`--pix-color-accent`)
- **暗草綠 (Secondary)**: `#008833` (`--pix-color-secondary`)
- **警告警報琥珀黃 (Warning)**: `#ffaa00` (`--pix-color-warning`)
- **青藍點陣 (Info)**: `#00e5ff` (`--pix-color-info`)
- **像素嫩綠 (Success)**: `#00ffaa` (`--pix-color-success`)
- **系統崩潰紅 (Error)**: `#ff3344` (`--pix-color-error`)

---

## 🛠️ CSS 核心元件類別 (Classes)

- `.pix-container` - 響應式容器 (max-width: 1140px)
- `.pix-navbar` - 8-bit 像素風格硬邊導覽列
- `.pix-hero` / `.pix-hero-title` - 自帶 █ 閃爍游標的黑綠終端機區塊
- `.pix-btn` (`.pix-btn-accent`, `.pix-btn-warning`) - 像素模擬下壓按鈕
- `.pix-card` - 像素接縫與深綠硬邊陰影卡片 (`box-shadow: 6px 6px 0 #008833`)
- `.pix-input` / `.pix-select` / `.pix-textarea` - CRT 內發光表單欄位
- `.pix-modal` / `.pix-offcanvas` - 軟碟機彈窗與像素選單抽屜

---

## 📜 JavaScript (script.js) 功能說明

- 響應式選單切換
- Accordion 點陣手風琴切換
- Tabs 頁籤切換
- Modal 及 Offcanvas 控制
- Range 滑桿 CPU 頻率數字同步
