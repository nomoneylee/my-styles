import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const SpaceHudApp());
}

class SpaceHudApp extends StatelessWidget {
  const SpaceHudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space UI / NASA HUD Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
