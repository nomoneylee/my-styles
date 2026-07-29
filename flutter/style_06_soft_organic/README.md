# 柔和莫蘭迪 / 自然有機風 (Soft Organic / Warm Editorial) Flutter App 模板

本模板專為冥想健康、睡眠日誌、植物養護與人文 Podcast 等重視舒壓與溫暖感受的 App 所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 卡片與輸入框採用 `28px` 超大有機圓角；按鈕採用 `StadiumBorder()` 膠囊圓角。
2. **陰影與邊框 (Elevations & Borders)**：
   - 採用極柔和微細線條與低壓迫感輕陰影，給予使用者溫潤撫慰。
3. **字階對比 (Typography)**：
   - 燕麥白背景 (`#F2EFE9`) 襯托鼠尾草綠 (`#8A9A86`) 與暖陶土色 (`#D98A6C`)，配合自然人文字階感。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取超大圓角卡片
Card(
  child: Padding(...),
);

// 讀取人文字階標題
Text('每日心靈植栽', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
