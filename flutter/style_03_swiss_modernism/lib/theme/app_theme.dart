import 'package:flutter/material.dart';

/// 新瑞士主義 / 包浩斯 (Swiss Modernism / Grid System) 主題系統
///
/// 特色：極致零圓角 (0px)、零陰影、純靠強烈色塊 (Color Block) 與龐大黑體字階劃分區域。
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FFFF2A00); // 標誌性瑞士紅
  static const Color secondaryColor = Color(0FF002FA7); // 國際奇連藍 (IKB Blue)
  static const Color backgroundColor = Color(0FFFFFFFF); // 純白網格背景
  static const Color surfaceColor = Color(0FFF0F0F0); // 色塊灰
  static const Color pureBlack = Color(0FF111111); // 極致深黑

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
      outline: pureBlack,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      // 文字系統規範 (Typography): 包浩斯與瑞士字型幾何感
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w900,
          color: pureBlack,
          letterSpacing: -1.2,
          height: 1.1,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: pureBlack,
          letterSpacing: -0.5,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: pureBlack,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: pureBlack,
          height: 1.4,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0FF555555),
          height: 1.4,
        ),
        labelLarge: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          letterSpacing: 0.5,
        ),
      ),

      // 卡片主題 (CardTheme): 完全零圓角 + 零陰影 + 平鋪色塊
      cardTheme: const CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        margin: EdgeInsets.zero,
      ),

      // 主要按鈕主題 (ElevatedButtonTheme): 瑞士紅零圓角塊狀按鈕
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
          ),
        ),
      ),

      // 次要按鈕主題 (OutlinedButtonTheme): 深黑零圓角按鈕
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: pureBlack,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
          ),
        ),
      ),

      // 輸入框主題 (InputDecorationTheme): 簡潔直角幾何框
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color(0FFF5F5F5),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        labelStyle: TextStyle(color: pureBlack, fontWeight: FontWeight.w700),
        hintStyle: TextStyle(color: Color(0FF888888), fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: pureBlack, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: pureBlack, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: primaryColor, width: 2.0),
        ),
      ),

      // 列表主題 (ListTileTheme)
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        iconColor: primaryColor,
        textColor: pureBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),

      // 開關主題 (SwitchTheme): 方形零圓角極致風格
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(Colors.white),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return pureBlack;
        }),
        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
      ),

      // 進度條主題 (ProgressIndicatorTheme)
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Color(0FFE0E0E0),
      ),

      // AppBar 主題
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: pureBlack,
          fontSize: 22,
          fontWeight: FontWeight.w900,
          letterSpacing: -0.5,
        ),
        iconTheme: IconThemeData(color: pureBlack, size: 26),
      ),
    );
  }
}
