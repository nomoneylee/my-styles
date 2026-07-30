import 'package:flutter/material.dart';

/// 當代展覽手冊概念設計風 (Editorial Exhibition) 主題系統
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FF0022FF); // 展覽標註藍
  static const Color secondaryColor = Color(0FFFF3300); // 實驗亮紅
  static const Color backgroundColor = Color(0FFF0F0F0); // 展覽灰白底
  static const Color surfaceColor = Color(0xFFFFFFFF); // 純白
  static const Color textPrimaryColor = Color(0FF0A0A0A); // 概念純黑
  static const Color textSecondaryColor = Color(0FF666666); // 標註灰字

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.light(
      primary: primaryColor,
      onPrimary: Colors.white,
      secondary: secondaryColor,
      onSecondary: Colors.white,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      outline: textPrimaryColor,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: textPrimaryColor, letterSpacing: -0.8),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: textPrimaryColor),
        titleLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: textPrimaryColor),
        bodyLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: textPrimaryColor),
        bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: textSecondaryColor),
      ),

      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: const BorderSide(color: textPrimaryColor, width: 1.5),
        ),
        margin: EdgeInsets.zero,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: textPrimaryColor,
          side: const BorderSide(color: textPrimaryColor, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintStyle: const TextStyle(color: textSecondaryColor, fontSize: 13),
        border: const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide(color: textPrimaryColor, width: 1.5)),
        enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide(color: textPrimaryColor, width: 1.5)),
        focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide(color: primaryColor, width: 2.5)),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(textPrimaryColor),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryColor;
          return Colors.white;
        }),
        trackOutlineColor: WidgetStateProperty.all(textPrimaryColor),
        trackOutlineWidth: WidgetStateProperty.all(1.5),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryColor;
          return Colors.white;
        }),
        checkColor: WidgetStateProperty.all(Colors.white),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        side: const BorderSide(color: textPrimaryColor, width: 1.5),
      ),

      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: Colors.black12,
        thumbColor: textPrimaryColor,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Colors.black12,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: false,
        shape: Border(bottom: BorderSide(color: textPrimaryColor, width: 1.5)),
        titleTextStyle: TextStyle(color: textPrimaryColor, fontSize: 17, fontWeight: FontWeight.w900),
        iconTheme: IconThemeData(color: textPrimaryColor),
      ),
    );
  }
}
