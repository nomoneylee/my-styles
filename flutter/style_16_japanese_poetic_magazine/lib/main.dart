import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const JapanesePoeticApp());
}

class JapanesePoeticApp extends StatelessWidget {
  const JapanesePoeticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Japanese Poetic Magazine Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
