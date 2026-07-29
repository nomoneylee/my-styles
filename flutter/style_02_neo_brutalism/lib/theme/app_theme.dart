import 'package:flutter/material.dart';

/// 新粗獷主義 (Neo-Brutalism) 主題系統
///
/// 特色：純黑 2.5-3px 粗邊框、硬邊 Offset 塊陰影 (無模糊)、高飽和撞色與粗體字階。
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FFFFE66D); // 潮牌鮮黃
  static const Color secondaryColor = Color(0FFFF6B6B); // 叛逆粉紅
  static const Color tertiaryColor = Color(0FF4ECDC4); // 青綠色
  static const Color backgroundColor = Color(0FFF4F4F0); // 復古紙張米白
  static const Color surfaceColor = Color(0FFFFFF); // 純白卡片
  static const Color pureBlack = Color(0FF000000); // 100% 純黑

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.light(
      primary: primaryColor,
      onPrimary: pureBlack,
      secondary: secondaryColor,
      onSecondary: pureBlack,
      tertiary: tertiaryColor,
      onTertiary: pureBlack,
      surface: surfaceColor,
      onSurface: pureBlack,
      error: const Color(0FFFF4757),
      onError: pureBlack,
      outline: pureBlack,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: baseColorScheme,

      // 文字系統規範 (Typography): 強烈極粗黑體對比
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          color: pureBlack,
          letterSpacing: -0.5,
        ),
        headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: pureBlack,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: pureBlack,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: pureBlack,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: pureBlack,
        ),
        labelLarge: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
          color: pureBlack,
        ),
      ),

      // 卡片主題 (CardTheme): 純黑 3px 邊框 + 微圓角 (4px)
      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: pureBlack, width: 3.0),
        ),
        margin: EdgeInsets.zero,
      ),

      // 主要按鈕主題 (ElevatedButtonTheme): 粗線條與碰撞顏色
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: pureBlack,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(color: pureBlack, width: 3.0),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),

      // 次要按鈕主題 (OutlinedButtonTheme)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: tertiaryColor,
          foregroundColor: pureBlack,
          side: const BorderSide(color: pureBlack, width: 3.0),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      // 輸入框主題 (InputDecorationTheme): 粗黑邊框與幾何感
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        labelStyle: const TextStyle(color: pureBlack, fontWeight: FontWeight.w700),
        hintStyle: const TextStyle(color: Color(0FF777777), fontWeight: FontWeight.w600),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: pureBlack, width: 3.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: pureBlack, width: 3.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: pureBlack, width: 3.5),
        ),
      ),

      // 列表主題 (ListTileTheme)
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        iconColor: pureBlack,
        textColor: pureBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: pureBlack, width: 2.5),
        ),
      ),

      // 開關主題 (SwitchTheme)
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(pureBlack),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return secondaryColor;
          }
          return Colors.white;
        }),
        trackOutlineColor: WidgetStateProperty.all(pureBlack),
        trackOutlineWidth: WidgetStateProperty.all(2.5),
      ),

      // 進度條主題 (ProgressIndicatorTheme)
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: secondaryColor,
        linearTrackColor: pureBlack,
      ),

      // AppBar 主題
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: pureBlack,
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        iconTheme: IconThemeData(color: pureBlack, size: 28),
      ),
    );
  }
}
