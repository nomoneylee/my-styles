import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const NordicApp());
}

class NordicApp extends StatelessWidget {
  const NordicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nordic Minimalist Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
