import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const CyberpunkNeonApp());
}

class CyberpunkNeonApp extends StatelessWidget {
  const CyberpunkNeonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyberpunk Neon Style Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
