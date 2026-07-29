# 新擬物風 (Neumorphism / Soft UI) Flutter App 模板

本模板專為智慧家居控制面板 (Smart Home)、高級音響播放器與極簡計算機等具有雕刻實體觸感的 App 所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 卡片與元件採用 `20px` / `16px` 柔和立體圓角。
2. **陰影與邊框 (Elevations & Borders)**：
   - 採用無外邊框設計，純粹靠同色系背景 (`#E0E5EC`) 搭配「右上白色亮光 (`#FFFFFF`) + 左下暗色陰影 (`#A3B1C6`)」創造元件凸起或凹陷的精緻物理質感。
3. **字階對比 (Typography)**：
   - 同色系雕刻灰文字對比，給予極簡且極具科技觸感的和諧感受。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取擬物雕刻卡片
Card(
  child: Padding(...),
);

// 讀取觸覺字階標題
Text('觸覺擬物面板', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
