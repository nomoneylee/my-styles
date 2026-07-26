# 專案開發與設計規範 (Project Rules)

本檔案定義 `styles` 專案（10 大獨特美學風格 Pure Vanilla Homepage 系統）的開發、設計與維護規範。

---

## 🎨 1. 視覺設計與風格原則

1. **嚴禁特定視覺通病**：
   - 禁止使用典型的科技藍黑底、浮誇 Neon 漸層或標準 Dashboard 預設卡片網格。
2. **多風格獨特性與獨立性**：
   - 專案包含 10 種風格目錄，各自代表不同的美學體系（Apple極簡、無印/誠品米白木質、戶外露營大地色、高檔飯店墨綠金、手作繪本奶油黃、美式復古報紙雙線、當代藝廊極簡純白、建築 1px 幾何水泥白、80年代 Mac 立體邊框、潮流海報高對比跑馬燈）。
3. **100% 自建 Pure Vanilla CSS/JS（嚴禁 Bootstrap 5 或外部框架）**：
   - **完全不引用** Bootstrap 5 CDN 或任何第三方 CSS/JS 庫。
   - 每個風格目錄必須有獨立的 `style.css`（包含佈局 Grid/Flex、元件與色彩系統）與獨立的 `script.js`（包含互動元件控制邏輯）。
   - 禁止將 CSS 或 JavaScript 內嵌至 `index.html`。
   - 每個風格目錄必須包含獨立的 `README.md`，詳細說明裡面定義的 CSS Classes 及 JS 腳本使用說明。

---

## 🛠️ 2. HTML 結構與自建元件規範

1. **結構要素必備**：
   - 每個風格的 `index.html` 必須具備 **Header / Navbar** 以及 **Hero Section**。
2. **專屬配色系統展示 (Color Palette Showcase)**：
   - 每個風格頁面必須包含該風格專屬配色的展示區塊（包含 Primary, Accent, Info, Success, Warning, Error/Danger 專屬命名色彩）。
3. **完全自建原生元件庫**：
   - 包含自建的 UI 元件：Buttons, Badges, Form Controls (Inputs, Select, Textarea, Checkbox, Radio, Switch, Range), Cards, Accordion, Tabs, Modal, Offcanvas, Progress Bar, Tables 等，並透過獨立 `script.js` 提供互動。

---

## 💬 3. 語言與溝通規範

- **繁體中文**：所有註解、說明文件與對話交流必須完全使用繁體中文，禁止使用簡體中文。
