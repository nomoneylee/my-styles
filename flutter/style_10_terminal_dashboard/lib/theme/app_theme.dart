import 'package:flutter/material.dart';

/// 終端機面板 (Terminal CLI Dashboard) 主題系統
///
/// 特色：極黑背景 (#0C100C)、螢光毒綠/矩陣綠 (#00FF66)、經典 Command Line 等寬文字與 Hacker Console 質感。
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FF00FF66); // 矩陣毒綠
  static const Color secondaryColor = Color(0FF00E5FF); // 終端天藍
  static const Color backgroundColor = Color(0FF0C100C); // 極暗綠黑
  static const Color surfaceColor = Color(0FF121A13); // 終端框底色
  static const Color textPrimaryColor = Color(0FF00FF66); // 毒綠主字
  static const Color textSecondaryColor = Color(0FF009933); // 暗綠次字

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.dark(
      primary: primaryColor,
      onPrimary: Colors.black,
      secondary: secondaryColor,
      onSecondary: Colors.black,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      outline: primaryColor,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w900,
          color: textPrimaryColor,
          fontFamily: 'Courier',
          letterSpacing: 1.0,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: textPrimaryColor,
          fontFamily: 'Courier',
        ),
        titleLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: textPrimaryColor,
          fontFamily: 'Courier',
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          color: textPrimaryColor,
          fontFamily: 'Courier',
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          color: textSecondaryColor,
          fontFamily: 'Courier',
        ),
      ),

      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: const BorderSide(color: primaryColor, width: 1.5),
        ),
        margin: EdgeInsets.zero,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            fontFamily: 'Courier',
          ),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            fontFamily: 'Courier',
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            fontFamily: 'Courier',
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            fontFamily: 'Courier',
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        hintStyle: const TextStyle(color: textSecondaryColor, fontSize: 13, fontFamily: 'Courier'),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: primaryColor, width: 1.5),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: primaryColor, width: 1.5),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: secondaryColor, width: 2.0),
        ),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(Colors.black),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return surfaceColor;
        }),
        trackOutlineColor: WidgetStateProperty.all(primaryColor),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return surfaceColor;
        }),
        checkColor: WidgetStateProperty.all(Colors.black),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        side: const BorderSide(color: primaryColor, width: 1.5),
      ),

      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: surfaceColor,
        thumbColor: primaryColor,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: surfaceColor,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        shape: Border(bottom: BorderSide(color: primaryColor, width: 1.5)),
        titleTextStyle: TextStyle(
          color: primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w900,
          fontFamily: 'Courier',
        ),
        iconTheme: IconThemeData(color: primaryColor),
      ),
    );
  }
}
