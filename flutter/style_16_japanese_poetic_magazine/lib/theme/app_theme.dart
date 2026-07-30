import 'package:flutter/material.dart';

/// 日系幾何雜誌詩意風 (Japanese Poetic Magazine) 主題系統
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FFC83E2B); // 詩意朱紅
  static const Color secondaryColor = Color(0FF6A7F72); // 莫蘭迪綠
  static const Color backgroundColor = Color(0FFF5F2EB); // 淡黃灰紙質感
  static const Color surfaceColor = Color(0xFFFFFFFF); // 純白
  static const Color textPrimaryColor = Color(0FF222222); // 印墨炭黑
  static const Color textSecondaryColor = Color(0FF777777); // 雜誌灰字

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
        displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, color: textPrimaryColor),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: textPrimaryColor),
        titleLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: textPrimaryColor),
        bodyLarge: TextStyle(fontSize: 15, color: textPrimaryColor),
        bodyMedium: TextStyle(fontSize: 13, color: textSecondaryColor),
      ),

      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: textPrimaryColor, width: 1.0),
        ),
        margin: EdgeInsets.zero,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: textPrimaryColor,
          side: const BorderSide(color: textPrimaryColor, width: 1.0),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintStyle: const TextStyle(color: textSecondaryColor, fontSize: 13),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: const BorderSide(color: textPrimaryColor, width: 1.0)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: const BorderSide(color: textPrimaryColor, width: 1.0)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: const BorderSide(color: primaryColor, width: 1.5)),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(textPrimaryColor),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return const Color(0xFFE8D5CE);
          return const Color(0xFFE0DDD5);
        }),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryColor;
          return surfaceColor;
        }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        side: const BorderSide(color: textPrimaryColor, width: 1.0),
      ),

      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: Color(0xFFE0DDD5),
        thumbColor: textPrimaryColor,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Color(0xFFE0DDD5),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        shape: Border(bottom: BorderSide(color: textPrimaryColor, width: 1.0)),
        titleTextStyle: TextStyle(color: textPrimaryColor, fontSize: 17, fontWeight: FontWeight.w800),
        iconTheme: IconThemeData(color: textPrimaryColor),
      ),
    );
  }
}
