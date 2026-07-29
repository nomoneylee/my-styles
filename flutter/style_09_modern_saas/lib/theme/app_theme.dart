import 'package:flutter/material.dart';

/// 扁平化微漸層 / 現代 SaaS 風 (Modern Flat / Vibrant Gradient) 主題系統
///
/// 特色：現代化企業感、高明度雙色漸層 (靛藍 #6366F1 到天空藍 #3B82F6)、彩色微漸層陰影與適中圓角 (12px)。
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FF6366F1); // 現代 SaaS 靛藍
  static const Color secondaryColor = Color(0FF3B82F6); // 天空藍
  static const Color accentGradientEnd = Color(0FF8B5CF6); // 紫色漸層點綴
  static const Color backgroundColor = Color(0FFF8FAFC); // 亮純潔白
  static const Color surfaceColor = Color(0FFFFFFFF); // 卡片純白
  static const Color textPrimaryColor = Color(0FF0F172A); // 深藍黑
  static const Color textSecondaryColor = Color(0FF64748B); // 簡潔灰

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.light(
      primary: primaryColor,
      onPrimary: Colors.white,
      secondary: secondaryColor,
      onSecondary: Colors.white,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      error: const Color(0FFEF4444),
      onError: Colors.white,
      outline: const Color(0FFE2E8F0),
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      // 文字系統規範 (Typography): 親和活潑 Enterprise 字階
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color: textPrimaryColor,
          letterSpacing: -0.6,
        ),
        headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: textPrimaryColor,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: textPrimaryColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textPrimaryColor,
          height: 1.4,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: textSecondaryColor,
          height: 1.4,
        ),
        labelLarge: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),

      // 卡片主題 (CardTheme): 適中圓角 (12px) + 微細邊框與彩色半透明陰影
      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(color: Color(0FFE2E8F0), width: 1.0),
        ),
        margin: EdgeInsets.zero,
      ),

      // 主要按鈕主題 (ElevatedButtonTheme): SaaS 高明度按鈕
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      // 次要按鈕主題 (OutlinedButtonTheme)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: Color(0FFCBD5E1), width: 1.2),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // 輸入框主題 (InputDecorationTheme): 乾淨簡約
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        labelStyle: const TextStyle(color: textSecondaryColor),
        hintStyle: const TextStyle(color: textSecondaryColor, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0FFCBD5E1), width: 1.2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0FFCBD5E1), width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: primaryColor, width: 2.0),
        ),
      ),

      // 列表主題 (ListTileTheme)
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        iconColor: primaryColor,
        textColor: textPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),

      // 開關主題 (SwitchTheme): 靛藍亮色開關
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(Colors.white),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return const Color(0FFE2E8F0);
        }),
        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
      ),

      // 進度條主題 (ProgressIndicatorTheme)
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Color(0FFE2E8F0),
      ),

      // AppBar 主題
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: textPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
        iconTheme: IconThemeData(color: primaryColor),
      ),
    );
  }
}
