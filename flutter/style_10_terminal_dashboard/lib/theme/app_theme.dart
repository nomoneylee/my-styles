import 'package:flutter/material.dart';

/// 高密度儀表板 / 終端機風格 (High-Density Dashboard / Terminal) 主題系統
///
/// 特色：純黑底 (#000000)、單色螢光綠 (#00FF66) 與琥珀黃 (#FFB000)、Monospace 等寬字型、極緊密內距與 0 圓角。
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FF00FF66); // 終端螢光綠 Terminal Green
  static const Color secondaryColor = Color(0FFFFB000); // 警報琥珀黃 Amber
  static const Color backgroundColor = Color(0FF000000); // 極致純黑底
  static const Color surfaceColor = Color(0FF0A0E14); // 數據矩陣黑
  static const Color textPrimaryColor = Color(0FF00FF66); // 螢光字
  static const Color textSecondaryColor = Color(0FF008833); // 暗螢光綠

  static ThemeData get darkTheme {
    final baseColorScheme = ColorScheme.dark(
      primary: primaryColor,
      onPrimary: backgroundColor,
      secondary: secondaryColor,
      onSecondary: backgroundColor,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      error: const Color(0FFFF3344),
      onError: Colors.white,
      outline: primaryColor,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      // 文字系統規範 (Typography): Monospace 高密度極客等寬字階
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w900,
          fontFamily: 'Courier',
          color: primaryColor,
          letterSpacing: -0.5,
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          fontFamily: 'Courier',
          color: primaryColor,
        ),
        titleLarge: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
          fontFamily: 'Courier',
          color: primaryColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontFamily: 'Courier',
          color: primaryColor,
          height: 1.2,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Courier',
          color: textSecondaryColor,
          height: 1.2,
        ),
        labelLarge: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w900,
          fontFamily: 'Courier',
          color: backgroundColor,
        ),
      ),

      // 卡片主題 (CardTheme): 0px 圓角 + 緊密螢光邊框
      cardTheme: const CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: primaryColor, width: 1.0),
        ),
        margin: EdgeInsets.zero,
      ),

      // 主要按鈕主題 (ElevatedButtonTheme): 0px 高密度區塊按鈕
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: backgroundColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          textStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w900,
            fontFamily: 'Courier',
          ),
        ),
      ),

      // 次要按鈕主題 (OutlinedButtonTheme)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: 1.0),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          textStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w800,
            fontFamily: 'Courier',
          ),
        ),
      ),

      // 輸入框主題 (InputDecorationTheme): 緊密方塊控制框
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color(0FF050A05),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        labelStyle: TextStyle(color: primaryColor, fontFamily: 'Courier', fontWeight: FontWeight.w700),
        hintStyle: TextStyle(color: textSecondaryColor, fontSize: 12, fontFamily: 'Courier'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: primaryColor, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: primaryColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: secondaryColor, width: 1.5),
        ),
      ),

      // 列表主題 (ListTileTheme)
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        iconColor: primaryColor,
        textColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),

      // 開關主題 (SwitchTheme): 螢光綠 / 琥珀黃黑邊開關
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(backgroundColor),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return textSecondaryColor;
        }),
        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
      ),

      // 進度條主題 (ProgressIndicatorTheme)
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Color(0FF081C0D),
      ),

      // AppBar 主題
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w900,
          fontFamily: 'Courier',
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 20),
      ),
    );
  }
}
