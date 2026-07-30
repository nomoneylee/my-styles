import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const SwissStyleApp());
}

class SwissStyleApp extends StatelessWidget {
  const SwissStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiss Style International Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
