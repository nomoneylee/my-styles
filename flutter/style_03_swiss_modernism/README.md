# 新瑞士主義 / 包浩斯 (Swiss Modernism) Flutter App 模板

本模板專為極致網格對齊、新聞展覽、作品集與重視字體層級視覺結構的 App 所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 採用極致 `0px` 完全零圓角，展現嚴謹且現代化的網格建築風格。
2. **陰影與邊框 (Elevations & Borders)**：
   - 零陰影 (`elevation: 0`)、無粗玄關，完全依靠純質色塊 (Color Block) 與粗體字階劃分區域。
3. **字階對比 (Typography)**：
   - 標誌性瑞士紅 (`#FF2A00`) 與奇連藍 (`#002FA7`) 撞色點綴，搭配 ExtraBold 極粗 Helvetica 幾何黑體字型對比。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取零圓角平面卡片
Card(
  child: Padding(...),
);

// 讀取瑞士風格標題
Text('01 // ARCHITECTURE', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
