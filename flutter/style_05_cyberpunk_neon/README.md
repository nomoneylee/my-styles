# 復古賽博朋克 / 霓虹暗黑 (Cyberpunk / Neon Dark) Flutter App 模板

本模板專為電競遊戲 App、數據監控儀表板、未來感黑客氛圍視覺所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 採用微切角 / 微直角 (`4px`) 幾何邊界，展現硬核科技感。
2. **陰影與邊框 (Elevations & Borders)**：
   - 採用霓虹青 (`#00F0FF`) 外發光 Neon Glow 邊框與外陰影（Shadow Blur 8–12px）。
3. **字階對比 (Typography)**：
   - 深夜純黑背景 (`#090A0F`) 搭配高彩度霓虹青 Cyan、霓虹粉 Magenta (`#FF007A`) 與螢光綠 (`#39FF14`) 強烈撞色對比。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取霓虹青邊框卡片
Card(
  child: Padding(...),
);

// 讀取發光科技標題
Text('SYSTEM OVERDRIVE', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
