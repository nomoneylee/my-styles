import 'package:flutter/material.dart';

/// 賽博龐克微燻風 (Cyber-Chic Noir) 主題系統
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FFFF2A85); // 霓虹洋紅
  static const Color secondaryColor = Color(0FFFFE600); // 螢光黃
  static const Color backgroundColor = Color(0FF180A17); // 深暗酒紅夜底
  static const Color surfaceColor = Color(0FF251324); // 暗紫卡片
  static const Color textPrimaryColor = Color(0FFFFFFFF); // 純白
  static const Color textSecondaryColor = Color(0FFA88FA6); // 柔紫灰字

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.dark(
      primary: primaryColor,
      onPrimary: Colors.white,
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
        displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: textPrimaryColor, letterSpacing: 0.8),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: primaryColor),
        titleLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: textPrimaryColor),
        bodyLarge: TextStyle(fontSize: 15, color: textPrimaryColor),
        bodyMedium: TextStyle(fontSize: 13, color: textSecondaryColor),
      ),

      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: const BorderSide(color: primaryColor, width: 1.5),
        ),
        margin: EdgeInsets.zero,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: secondaryColor,
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        hintStyle: const TextStyle(color: textSecondaryColor, fontSize: 14),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: const BorderSide(color: primaryColor, width: 1.5)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: const BorderSide(color: primaryColor, width: 1.5)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: const BorderSide(color: secondaryColor, width: 2.0)),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(Colors.black),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryColor;
          return surfaceColor;
        }),
        trackOutlineColor: WidgetStateProperty.all(primaryColor),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryColor;
          return surfaceColor;
        }),
        checkColor: WidgetStateProperty.all(Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: const BorderSide(color: primaryColor, width: 1.5),
      ),

      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: surfaceColor,
        thumbColor: secondaryColor,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: surfaceColor,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        shape: Border(bottom: BorderSide(color: primaryColor, width: 1.5)),
        titleTextStyle: TextStyle(color: primaryColor, fontSize: 18, fontWeight: FontWeight.w900),
        iconTheme: IconThemeData(color: primaryColor),
      ),
    );
  }
}
