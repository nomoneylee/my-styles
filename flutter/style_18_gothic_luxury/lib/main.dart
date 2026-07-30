import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/sample_showcase_screen.dart';

void main() {
  runApp(const GothicLuxuryApp());
}

class GothicLuxuryApp extends StatelessWidget {
  const GothicLuxuryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gothic Luxury Showcase',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SampleShowcaseScreen(),
    );
  }
}
