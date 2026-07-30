import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const BentoGridApp());
}

class BentoGridApp extends StatelessWidget {
  const BentoGridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bento Grid AI Dashboard Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
