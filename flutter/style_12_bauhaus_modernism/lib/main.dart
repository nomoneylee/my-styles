import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const BauhausApp());
}

class BauhausApp extends StatelessWidget {
  const BauhausApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bauhaus Modernism Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
