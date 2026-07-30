import 'package:flutter/material.dart';

/// 範例展示頁面 (Swiss Modernism Showcase Screen)
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
  double _sliderValue = 0.80;
  final TextEditingController _textController =
      TextEditingController(text: 'SWISS_GRID_SYSTEM_2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Colors.black, width: 1.5),
        ),
        title: const Text('SWISS DIALOG', style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('極簡精密邊框的對話框元件。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCEL'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CONFIRM'),
          ),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black, width: 1.5)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('SWISS BOTTOM PANEL',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            const Text('網格排列之底部面板範例。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.grid_on, color: Colors.black),
              title: const Text('GRID LAYOUT SETTINGS', style: TextStyle(fontWeight: FontWeight.w700)),
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
        title: const Text('HELVETICA // SWISS STYLE'),
        actions: [
          IconButton(
            icon: const Icon(Icons.grid_view_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('UI ELEMENTS', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('INTERNATIONAL TYPOGRAPHIC STYLE / 1950s', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Search Bar
            SearchBar(
              hintText: 'SEARCH IN GRID...',
              leading: const Icon(Icons.search, color: Colors.black),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('OVERVIEW')),
                ButtonSegment(value: 1, label: Text('CONTROLS')),
                ButtonSegment(value: 2, label: Text('MODALS')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            // 1. Buttons
            Text('1. BUTTON VARIANTS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('PRIMARY (RED)')),
                FilledButton(onPressed: () {}, child: const Text('FILLED (BLACK)')),
                OutlinedButton(onPressed: () {}, child: const Text('OUTLINED')),
                TextButton(onPressed: () {}, child: const Text('TEXT LINK')),
              ],
            ),
            const SizedBox(height: 24),

            // 2. Inputs & Selection
            Text('2. INPUTS & SELECTION', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'INPUT FIELD LABEL',
                prefixIcon: Icon(Icons.edit_note, color: Colors.black),
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
                        const Text('SWITCH CONTROL', style: TextStyle(fontWeight: FontWeight.w800)),
                        Switch(
                          value: _switchValue,
                          onChanged: (val) => setState(() => _switchValue = val),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('CHECKBOX ITEM', style: TextStyle(fontWeight: FontWeight.w800)),
                        Checkbox(
                          value: _checkboxValue,
                          onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('VALUE SLIDER', style: TextStyle(fontWeight: FontWeight.w800)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(fontWeight: FontWeight.w800)),
                          ],
                        ),
                        Slider(
                          value: _sliderValue,
                          onChanged: (val) => setState(() => _sliderValue = val),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 3. Cards & Views
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
                        const Text('GRID CARD ITEM', style: TextStyle(fontWeight: FontWeight.w900)),
                        Badge(
                          label: const Text('CH-8000'),
                          backgroundColor: const Color(0FFFF2A00),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('METRIC PROGRESS: ${(_sliderValue * 100).toInt()}%'),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 4. Modals
            Text('4. MODALS & OVERLAYS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _showSampleDialog,
                    child: const Text('SHOW DIALOG'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: _showSampleBottomSheet,
                    child: const Text('BOTTOM SHEET'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black, width: 1.0)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0FFFF2A00),
          unselectedItemColor: Colors.black54,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: 'INDEX'),
            BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: 'GRID'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'MENU'),
          ],
        ),
      ),
    );
  }
}
