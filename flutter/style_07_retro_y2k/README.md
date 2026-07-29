# 復古 Y2K / 90 年代電腦風 (Retro Y2K / OS Classic) Flutter App 模板

本模板專為復古遊戲 App、個人客製化工具與具備懷舊千禧年代電腦介面質感的 App 所設計。

---

## 🎨 視覺與 Theme 設計規範

1. **圓角定義 (BorderRadius)**：
   - 採用完全 `0px` 方塊直角，呈現早期視窗作業系統的幾何框架。
2. **陰影與邊框 (Elevations & Borders)**：
   - 強調經典 3D 凸起與按下邊框 (Bevel Effect)，透過亮灰與深灰邊框呈現立體層次。
3. **字階對比 (Typography)**：
   - 經典電腦灰 (`#C0C0C0`) 與經典深藍標題列 (`#000080`) 襯托黑體像素字階對比。

---

## 🚀 零硬編碼使用說明

所有 Widget 元件均讀取 `Theme.of(context)` 屬性：

```dart
// 讀取 3D 凸起視窗卡片
Card(
  child: Padding(...),
);

// 讀取像素標題
Text('Y2K_PLAYER.EXE', style: Theme.of(context).textTheme.displayLarge);
```

---

## 📂 Web 模擬檢視

您可以直接在 `web/index.html` 查看此風格在 Web 上的 Pure Vanilla 模擬展示頁面。
