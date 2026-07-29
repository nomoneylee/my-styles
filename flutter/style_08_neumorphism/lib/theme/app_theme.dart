import 'package:flutter/material.dart';

/// 新擬物風 (Neumorphism / Soft UI) 主題系統
///
/// 特色：雕刻觸覺感、背景與元件同色 (#E0E5EC)、純靠雙重「右上亮影 + 左下暗影」打造極簡凸起層次。
class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0FF6D5DFC); // 擬物核心紫
  static const Color secondaryColor = Color(0FF4D47C3);
  static const Color neumorphismBase = Color(0FFE0E5EC); // 全局一體化奶灰同色
  static const Color shadowLight = Color(0FFFFFFFF); // 右上亮色陰影
  static const Color shadowDark = Color(0FFA3B1C6); // 左下暗色陰影
  static const Color textPrimaryColor = Color(0FF4A5568); // 雕刻深灰字
  static const Color textSecondaryColor = Color(0FF8D99AE);

  static ThemeData get lightTheme {
    final baseColorScheme = ColorScheme.light(
      primary: primaryColor,
      onPrimary: Colors.white,
      secondary: secondaryColor,
      onSecondary: Colors.white,
      surface: neumorphismBase,
      onSurface: textPrimaryColor,
      error: const Color(0FFFF6B6B),
      onError: Colors.white,
      outline: Colors.transparent,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: neumorphismBase,
      colorScheme: baseColorScheme,

      // 文字系統規範 (Typography): 圓潤雕刻質感字階
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: textPrimaryColor,
          letterSpacing: -0.5,
        ),
        headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: textPrimaryColor,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
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
          fontWeight: FontWeight.w600,
          color: textPrimaryColor,
        ),
      ),

      // 卡片主題 (CardTheme): 擬物浮雕卡片
      cardTheme: CardTheme(
        color: neumorphismBase,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.zero,
      ),

      // 主要按鈕主題 (ElevatedButtonTheme): 擬物紫亮彩凸起按鈕
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      // 次要按鈕主題 (OutlinedButtonTheme): 擬物同色系浮雕按鈕
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: neumorphismBase,
          foregroundColor: textPrimaryColor,
          side: BorderSide.none,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // 輸入框主題 (InputDecorationTheme): 擬物凹陷內陰影框
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: neumorphismBase,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        labelStyle: const TextStyle(color: textSecondaryColor),
        hintStyle: const TextStyle(color: textSecondaryColor, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: primaryColor, width: 1.5),
        ),
      ),

      // 列表主題 (ListTileTheme)
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        iconColor: primaryColor,
        textColor: textPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),

      // 開關主題 (SwitchTheme): 擬物圓潤立體按鈕
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(neumorphismBase),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return const Color(0xFFD0D7DE);
        }),
        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
      ),

      // 進度條主題 (ProgressIndicatorTheme)
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: Color(0xFFD0D7DE),
      ),

      // AppBar 主題
      appBarTheme: const AppBarTheme(
        backgroundColor: neumorphismBase,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: textPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(color: primaryColor),
      ),
    );
  }
}
