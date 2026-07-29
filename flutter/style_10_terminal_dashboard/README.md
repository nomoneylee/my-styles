# 高密度儀表板 / 終端機風格 (High-Density Dashboard / Terminal) Flutter App 模板

本模板專為股票/期貨高頻交易、伺服器 Log 監控、程式碼編輯器與極客專用工具 App 所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 完全 `0px` 零圓角，極緊湊無裝飾性間距。
2. **陰影與邊框 (Elevations & Borders)**：
   - 零陰影（`elevation: 0`），純靠 `1.0px` 螢光綠邊框線與矩陣網格區隔數據。
3. **字階對比 (Typography)**：
   - 純黑底 (`#000000`) 搭配螢光綠 (`#00FF66`) 與琥珀黃 (`#FFB000`) Monospace 等寬字型高密度對比。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取等寬螢光綠邊框卡片
Card(
  child: Padding(...),
);

// 讀取 Monospace 終端機標題
Text('> HIGH_FREQ_TRADING_DASHBOARD', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
