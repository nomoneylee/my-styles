import 'package:flutter/material.dart';

/// 韓系奶油甜點風 (Korean Minimalist Warm) 主題系統
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FF6B5B52); // 暖燕麥濃褐
  static const Color secondaryColor = Color(0FFF6E7C1); // 溫柔奶油黃
  static const Color accentColor = Color(0FFB8DBCE); // 低飽和薄荷綠
  static const Color backgroundColor = Color(0xFFFFFDF7); // 奶油暖白底
  static const Color surfaceColor = Color(0xFFFFFFFF); // 純白
  static const Color textPrimaryColor = Color(0FF4A3E39); // 暖深棕字
  static const Color textSecondaryColor = Color(0FF9E8E85); // 柔和燕麥灰字

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.light(
      primary: primaryColor,
      onPrimary: Colors.white,
      secondary: secondaryColor,
      onSecondary: textPrimaryColor,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      outline: secondaryColor,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: textPrimaryColor),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: textPrimaryColor),
        titleLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: textPrimaryColor),
        bodyLarge: TextStyle(fontSize: 15, color: textPrimaryColor),
        bodyMedium: TextStyle(fontSize: 13, color: textSecondaryColor),
      ),

      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
          side: const BorderSide(color: Color(0xFFF3E8DB), width: 1.2),
        ),
        margin: EdgeInsets.zero,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: textPrimaryColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        hintStyle: const TextStyle(color: textSecondaryColor, fontSize: 14),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(28.0), borderSide: const BorderSide(color: Color(0xFFF3E8DB), width: 1.2)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(28.0), borderSide: const BorderSide(color: Color(0xFFF3E8DB), width: 1.2)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(28.0), borderSide: const BorderSide(color: primaryColor, width: 1.5)),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(Colors.white),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return accentColor;
          return const Color(0xFFEBE0D3);
        }),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryColor;
          return surfaceColor;
        }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: const BorderSide(color: textSecondaryColor, width: 1.2),
      ),

      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryColor,
        inactiveTrackColor: Color(0xFFF3E8DB),
        thumbColor: primaryColor,
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Color(0xFFF3E8DB),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: textPrimaryColor, fontSize: 18, fontWeight: FontWeight.w600),
        iconTheme: IconThemeData(color: primaryColor),
      ),
    );
  }
}
