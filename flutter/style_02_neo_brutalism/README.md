# 新粗獷主義 (Neo-Brutalism) Flutter App 模板

本模板專為大膽、叛逆、潮流電商與高張力視覺展現的 App 所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 採用直角或微圓角 (`4px` / `0px`)，給予銳利且帶有幾何感的復古潮流質感。
2. **陰影與邊框 (Elevations & Borders)**：
   - 強調 `2.5px - 3.0px` 100% 純黑極粗邊框。
   - 搭配硬邊 Offset 塊陰影 (無模糊 BlurRadius = 0)，造就極具視覺衝擊力的立體撞色效果。
3. **字階對比 (Typography)**：
   - 使用粗體 ExtraBold/Black 字階對比，高飽和度色彩（潮牌黃 `#FFE66D`、霓粉 `#FF6B6B`、青綠 `#4ECDC4`）碰撞純黑背景與文字。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取粗黑邊框與圓角卡片
Card(
  child: Padding(...),
);

// 讀取粗體黑體字階
Text('LIMITED DROP 01', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
