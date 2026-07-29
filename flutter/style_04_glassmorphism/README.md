# 玻璃擬物風 (Glassmorphism / Frost UI) Flutter App 模板

本模板專為 Web3 虛擬貨幣錢包、天氣 App 與具備未科技感的半透明質感 App 所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 採用 `20px` 圓潤卡片與輸入框邊角。
2. **陰影與邊框 (Elevations & Borders)**：
   - 採用半透明白色（`Colors.white.withOpacity(0.15)`）卡片背景，結合 1px 半透明亮邊框。
   - 結合 `BackdropFilter(sigmaX: 16, sigmaY: 16)` 毛玻璃高模糊通透質感。
3. **字階對比 (Typography)**：
   - 深色暗紫/夜空藍背景 (`#0F172A`) 襯托冰天藍 (`#38BDF8`) 與霓紫 (`#C084FC`) 晶瑩透光發光字階。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取半透明毛玻璃卡片樣式
Card(
  child: Padding(...),
);

// 讀取發光文字樣式
Text('Web3 晶瑩資產', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
