# 扁平化微漸層 / 現代 SaaS 風 (Modern Flat / Vibrant Gradient) Flutter App 模板

本模板專為團隊協作工具 (Slack/Asana 類)、SaaS 企業產品與金融理財數據看板所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 採用 `12px` / `10px` 適中與現代化圓角。
2. **陰影與邊框 (Elevations & Borders)**：
   - 強調高明度雙色漸層 (靛藍 `#6366F1` ➔ 天空藍 `#3B82F6`)。
   - 搭配半透明主色彩影 (`BoxShadow(color: Color(0x406366F1), blurRadius: 16)`)。
3. **字階對比 (Typography)**：
   - 乾淨純白背景 (`#FFFFFF` / `#F8FAFC`) 搭配深藍黑文字對比與極佳可讀性。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取適中圓角與彩色半透明陰影卡片
Card(
  child: Padding(...),
);

// 讀取 SaaS 企業字階
Text('團隊營收分析', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
