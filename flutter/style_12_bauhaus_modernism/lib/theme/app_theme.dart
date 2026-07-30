import 'package:flutter/material.dart';

/// 包浩斯現代主義風 (Bauhaus Modernism) 主題系統
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FFD9381E); // 包浩斯紅
  static const Color secondaryColor = Color(0FF00509D); // 原色藍
  static const Color accentColor = Color(0FFFFB703); // 原色黃
  static const Color backgroundColor = Color(0FFF4EFE6); // 米黃畫布底
  static const Color surfaceColor = Color(0xFFFFFFFF); // 純白
  static const Color textPrimaryColor = Color(0FF121212); // 包浩斯黑
  static const Color textSecondaryColor = Color(0FF555555); // 深灰字

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
        displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: textPrimaryColor, letterSpacing: -0.5),
        headlineMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: textPrimaryColor),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: textPrimaryColor),
        bodyLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: textPrimaryColor),
        bodyMedium: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: textSecondaryColor),
      ),

      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: const BorderSide(color: textPrimaryColor, width: 2.0),
        ),
        margin: EdgeInsets.zero,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: textPrimaryColor, width: 2.0)),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: textPrimaryColor,
          side: const BorderSide(color: textPrimaryColor, width: 2.0),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintStyle: const TextStyle(color: textSecondaryColor, fontSize: 14),
        border: const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide(color: textPrimaryColor, width: 2.0)),
        enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide(color: textPrimaryColor, width: 2.0)),
        focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide(color: primaryColor, width: 3.0)),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(textPrimaryColor),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return accentColor;
          return Colors.white;
        }),
        trackOutlineColor: WidgetStateProperty.all(textPrimaryColor),
        trackOutlineWidth: WidgetStateProperty.all(2.0),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryColor;
          return Colors.white;
        }),
        checkColor: WidgetStateProperty.all(Colors.white),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        side: const BorderSide(color: textPrimaryColor, width: 2.0),
      ),

      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: Colors.white,
        thumbColor: textPrimaryColor,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Colors.white,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: accentColor,
        elevation: 0,
        centerTitle: true,
        shape: Border(bottom: BorderSide(color: textPrimaryColor, width: 2.5)),
        titleTextStyle: TextStyle(color: textPrimaryColor, fontSize: 18, fontWeight: FontWeight.w900),
        iconTheme: IconThemeData(color: textPrimaryColor),
      ),
    );
  }
}
