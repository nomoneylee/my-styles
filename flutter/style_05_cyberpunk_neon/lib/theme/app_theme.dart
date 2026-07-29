import 'package:flutter/material.dart';

/// 復古賽博朋克 / 霓虹暗黑 (Cyberpunk / Neon Dark) 主題系統
///
/// 特色：純黑/暗夜藍背景、霓虹青與霓虹粉高彩度發光外框、切角與未來科技感 UI。
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FF00F0FF); // 霓虹青 Cyan
  static const Color secondaryColor = Color(0FFFF007A); // 霓虹粉 Magenta
  static const Color tertiaryColor = Color(0FF39FF14); // 螢光發光綠
  static const Color backgroundColor = Color(0FF090A0F); // 夜幕深黑
  static const Color surfaceColor = Color(0FF121520); // 科技面板黑
  static const Color textPrimaryColor = Color(0FFFFFFFF); // 霓虹純白
  static const Color textSecondaryColor = Color(0FF7D8FA6); // 科技灰

  static ThemeData get darkTheme {
    final baseColorScheme = ColorScheme.dark(
      primary: primaryColor,
      onPrimary: backgroundColor,
      secondary: secondaryColor,
      onSecondary: Colors.white,
      tertiary: tertiaryColor,
      onTertiary: backgroundColor,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      error: const Color(0FFFF2A6D),
      onError: Colors.white,
      outline: primaryColor,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      // 文字系統規範 (Typography): 電競賽博風格
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          color: primaryColor,
          letterSpacing: 1.0,
          shadows: [
            Shadow(color: primaryColor, blurRadius: 10),
          ],
        ),
        headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: textPrimaryColor,
          letterSpacing: 0.5,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: textPrimaryColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: textPrimaryColor,
          height: 1.4,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textSecondaryColor,
          height: 1.4,
        ),
        labelLarge: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w900,
          color: backgroundColor,
          letterSpacing: 1.0,
        ),
      ),

      // 卡片主題 (CardTheme): 霓虹青邊框 + 暗黑面板
      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: primaryColor, width: 1.5),
        ),
        margin: EdgeInsets.zero,
      ),

      // 主要按鈕主題 (ElevatedButtonTheme): 霓虹粉發光按鈕
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(color: secondaryColor, width: 1.5),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.0,
          ),
        ),
      ),

      // 次要按鈕主題 (OutlinedButtonTheme)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
          ),
        ),
      ),

      // 輸入框主題 (InputDecorationTheme): 霓虹青外框
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color(0FF0D111A),
        contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        labelStyle: TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
        hintStyle: TextStyle(color: textSecondaryColor, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: primaryColor, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: primaryColor, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: secondaryColor, width: 2.0),
        ),
      ),

      // 列表主題 (ListTileTheme)
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        iconColor: primaryColor,
        textColor: textPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: Color(0xFF1E293B), width: 1.5),
        ),
      ),

      // 開關主題 (SwitchTheme): 霓虹粉與青綠切換
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(backgroundColor),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return secondaryColor;
        }),
        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
      ),

      // 進度條主題 (ProgressIndicatorTheme)
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: tertiaryColor,
        linearTrackColor: Color(0FF1E293B),
      ),

      // AppBar 主題
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w900,
          letterSpacing: 1.0,
          shadows: [
            Shadow(color: primaryColor, blurRadius: 8),
          ],
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 26),
      ),
    );
  }
}
