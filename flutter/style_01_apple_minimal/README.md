# 極簡科技風 (Apple-style Minimalist) Flutter App 模板

本模板專為追求質感、大量留白與極致圓潤視覺效果的 App 設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 卡片與輸入框統一採用 `20px` / `16px` 大圓角，給予使用者溫潤、現代且低奢的視覺體驗。
2. **陰影與邊框 (Elevations & Borders)**：
   - 採用極輕微的柔和陰影（BlurRadius 12, Opacity 0.04），無明顯粗線條，僅以 0.5px 微細邊框區隔。
3. **字階對比 (Typography)**：
   - 背景以 `#F5F5F7` 極簡灰白為主，文字採用近純黑 `#1D1D1F`，輔以強烈的標題大小對比。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取卡片圓角與背景
Card(
  child: Padding(...),
);

// 讀取標題與內文樣式
Text('即時狀態看板', style: Theme.of(context).textTheme.displayLarge);

// 讀取主要按鈕
ElevatedButton(
  onPressed: () {},
  child: Text('同步裝置設定'),
);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
