import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const GlassmorphismApp());
}

class GlassmorphismApp extends StatelessWidget {
  const GlassmorphismApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glassmorphism Style Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
