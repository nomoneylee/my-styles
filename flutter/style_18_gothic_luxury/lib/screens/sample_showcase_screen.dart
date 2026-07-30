import 'package:flutter/material.dart';

class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  int _currentNavIndex = 0;
  int _segmentedIndex = 0;
  bool _switchValue = true;
  bool _checkboxValue = true;
  double _sliderValue = 0.92;
  final TextEditingController _textController = TextEditingController(text: 'GOTHIC_PARFUM_NOIR_2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FF1E1E22),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Color(0FFA6A8AB), width: 1.0)),
        title: const Text('🥀 GOTHIC LUXURY DIALOG', style: TextStyle(color: Color(0FFD1D5DB), letterSpacing: 1.0)),
        content: const Text('獨立暗黑香氛精品哥德風格對話框。', style: TextStyle(color: Color(0FF7A7D84))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('DISMISS')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('PURCHASE')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF1E1E22),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.zero)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0FFA6A8AB), width: 1.0))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('👑 GOTHIC NOIR SHEET', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0FFD1D5DB))),
            const SizedBox(height: 12),
            const Text('獨立香氛與古典細邊框面板選單。', style: TextStyle(color: Color(0FF7A7D84))),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.dry_cleaning_outlined, color: Color(0FF800A1C)),
              title: const Text('NOIR BLOOD ROSE PARFUM', style: TextStyle(color: Color(0FFD1D5DB), letterSpacing: 1.0)),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('GOTHIC LUXURY // NOIR'),
        actions: [
          IconButton(icon: const Icon(Icons.diamond_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('GOTHIC ELEGANCE', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('炭黑基底、暗夜血紅與貴族鉑金質感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH IN GOTHIC ARCHIVE...',
              hintStyle: WidgetStateProperty.all(const TextStyle(color: Color(0FF7A7D84))),
              textStyle: WidgetStateProperty.all(const TextStyle(color: Color(0FFD1D5DB))),
              leading: const Icon(Icons.search, color: Color(0FFA6A8AB)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0FF1E1E22)),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Color(0FFA6A8AB), width: 0.8)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('PARFUM')),
                ButtonSegment(value: 1, label: Text('FASHION')),
                ButtonSegment(value: 2, label: Text('SILVER')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. BUTTON VARIANTS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('BLOOD RED')),
                FilledButton(onPressed: () {}, child: const Text('SILVER GREY')),
                OutlinedButton(onPressed: () {}, child: const Text('OUTLINED')),
                TextButton(onPressed: () {}, child: const Text('TEXT LINK')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. INPUTS & CONTROLS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              style: const TextStyle(color: Color(0FFD1D5DB)),
              decoration: const InputDecoration(
                labelText: 'PARFUM_CODE',
                prefixIcon: Icon(Icons.key, color: Color(0FFA6A8AB)),
              ),
            ),
            const SizedBox(height: 16),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('GOTHIC SILENCE MODE', style: TextStyle(color: Color(0FFD1D5DB), fontWeight: FontWeight.bold)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0FFA6A8AB), height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('LIMITED EDITION ACCESS', style: TextStyle(color: Color(0FFD1D5DB), fontWeight: FontWeight.bold)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0FFA6A8AB), height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('CONCENTRATION RATIO', style: TextStyle(color: Color(0FFD1D5DB), fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF800A1C), fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Slider(value: _sliderValue, onChanged: (val) => setState(() => _sliderValue = val)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text('3. CARDS & VIEWS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('BLOOD ROSE EDITION #09', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0FFD1D5DB))),
                        Badge(label: const Text('LUXURY'), backgroundColor: const Color(0FF800A1C)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('INTENSITY: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF7A7D84))),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text('4. MODALS & OVERLAYS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('ALERT DIALOG'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('BOTTOM SHEET'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0FFA6A8AB), width: 0.8))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FF141416),
          selectedItemColor: const Color(0FF800A1C),
          unselectedItemColor: const Color(0FF7A7D84),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.dark_mode_outlined), label: 'NOIR'),
            BottomNavigationBarItem(icon: Icon(Icons.spa_outlined), label: 'PARFUM'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'MEMBER'),
          ],
        ),
      ),
    );
  }
}
