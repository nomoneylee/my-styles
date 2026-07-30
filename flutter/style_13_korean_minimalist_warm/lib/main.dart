import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const KoreanWarmApp());
}

class KoreanWarmApp extends StatelessWidget {
  const KoreanWarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Korean Minimalist Warm Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
