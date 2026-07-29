import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const TerminalDashboardApp());
}

class TerminalDashboardApp extends StatelessWidget {
  const TerminalDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terminal Dashboard Style Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
