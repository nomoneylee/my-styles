import 'package:flutter/material.dart';

/// 復古 Y2K / 90 年代電腦風 (Retro Y2K / OS Classic) 主題系統
///
/// 特色：經典 90 年代電腦灰 (#C0C0C0)、經典深藍標題列 (#000080)、3D Bevel 立體邊框與直角像素感。
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FF000080); // 經典 90s OS Navy 藍
  static const Color secondaryColor = Color(0FF008080); // 經典青綠 Teal
  static const Color backgroundColor = Color(0FF55AAA0); // 經典網頁藍綠桌布
  static const Color surfaceColor = Color(0FFC0C0C0); // 經典視窗灰 Win95 Gray
  static const Color bevelLight = Color(0FFFFFFFF); // 3D 凸起頂端亮光
  static const Color bevelDark = Color(0FF808080); // 3D 凸起底端陰影
  static const Color pureBlack = Color(0FF000000);

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.light(
      primary: primaryColor,
      onPrimary: Colors.white,
      secondary: secondaryColor,
      onSecondary: Colors.white,
      surface: surfaceColor,
      onSurface: pureBlack,
      error: const Color(0FFFF0000),
      onError: Colors.white,
      outline: bevelDark,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      // 文字系統規範 (Typography): 像素點陣懷舊字階
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w900,
          color: pureBlack,
          letterSpacing: 0.5,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: pureBlack,
        ),
        titleLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: pureBlack,
        ),
        bodyMedium: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: pureBlack,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: pureBlack,
        ),
      ),

      // 卡片主題 (CardTheme): 經典 3D 凸起 Windows 視窗
      cardTheme: const CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: bevelLight, width: 2.0),
        ),
        margin: EdgeInsets.zero,
      ),

      // 主要按鈕主題 (ElevatedButtonTheme): 方塊狀 3D 立體按下按鈕
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: surfaceColor,
          foregroundColor: pureBlack,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color: bevelDark, width: 2.0),
          ),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),

      // 次要按鈕主題 (OutlinedButtonTheme)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: surfaceColor,
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: 2.0),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      // 輸入框主題 (InputDecorationTheme): 經典凹陷白底框
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        labelStyle: TextStyle(color: pureBlack, fontWeight: FontWeight.w700),
        hintStyle: TextStyle(color: bevelDark, fontSize: 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: bevelDark, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: bevelDark, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: primaryColor, width: 2.5),
        ),
      ),

      // 列表主題 (ListTileTheme)
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        iconColor: primaryColor,
        textColor: pureBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),

      // 開關主題 (SwitchTheme): 方形復古 Checkbox / Switch
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(surfaceColor),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.white;
        }),
        trackOutlineColor: WidgetStateProperty.all(pureBlack),
      ),

      // 進度條主題 (ProgressIndicatorTheme)
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Colors.white,
      ),

      // AppBar 主題: 90s OS 標題列
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.5,
        ),
        iconTheme: IconThemeData(color: Colors.white, size: 22),
      ),
    );
  }
}
