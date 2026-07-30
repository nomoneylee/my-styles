import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const SantoriniApp());
}

class SantoriniApp extends StatelessWidget {
  const SantoriniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Santorini Mediterranean Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
