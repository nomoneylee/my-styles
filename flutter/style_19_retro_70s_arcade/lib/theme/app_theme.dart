import 'package:flutter/material.dart';

/// 新美式復古 Arcade 嬉皮風 (Retro 70s Arcade) 主題系統
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FFD94E2B); // 嬉皮橘紅
  static const Color secondaryColor = Color(0FFE3A826); // 復古芥末黃
  static const Color accentColor = Color(0FF4A2912); // 復古深棕
  static const Color backgroundColor = Color(0xFFF9F3E5); // 復古暖米底
  static const Color surfaceColor = Color(0xFFFFFFFF); // 純白
  static const Color textPrimaryColor = Color(0FF211510); // 黑膠黑
  static const Color textSecondaryColor = Color(0FF6B4A38); // 復古棕

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.light(
      primary: primaryColor,
      onPrimary: Colors.white,
      secondary: secondaryColor,
      onSecondary: textPrimaryColor,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      outline: textPrimaryColor,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: textPrimaryColor),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: textPrimaryColor),
        titleLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: textPrimaryColor),
        bodyLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: textPrimaryColor),
        bodyMedium: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: textSecondaryColor),
      ),

      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0), side: const BorderSide(color: textPrimaryColor, width: 2.0)),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: textPrimaryColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0), side: const BorderSide(color: textPrimaryColor, width: 2.0)),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: textPrimaryColor,
          side: const BorderSide(color: textPrimaryColor, width: 2.0),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0), borderSide: const BorderSide(color: textPrimaryColor, width: 2.0)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0), borderSide: const BorderSide(color: textPrimaryColor, width: 2.0)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14.0), borderSide: const BorderSide(color: primaryColor, width: 2.5)),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(textPrimaryColor),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return secondaryColor;
          return const Color(0xFFEADBCE);
        }),
        trackOutlineColor: WidgetStateProperty.all(textPrimaryColor),
        trackOutlineWidth: WidgetStateProperty.all(2.0),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryColor;
          return surfaceColor;
        }),
        checkColor: WidgetStateProperty.all(Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: const BorderSide(color: textPrimaryColor, width: 2.0),
      ),

      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: Color(0xFFEADBCE),
        thumbColor: textPrimaryColor,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Color(0xFFEADBCE),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: secondaryColor,
        elevation: 0,
        centerTitle: true,
        shape: Border(bottom: BorderSide(color: textPrimaryColor, width: 2.5)),
        titleTextStyle: TextStyle(color: textPrimaryColor, fontSize: 18, fontWeight: FontWeight.w900),
        iconTheme: IconThemeData(color: textPrimaryColor),
      ),
    );
  }
}
