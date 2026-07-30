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
  double _sliderValue = 0.90;
  final TextEditingController _textController = TextEditingController(text: 'HELVETICA_GRID_SYSTEM');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Colors.black, width: 2.0)),
        title: const Text('SWISS DIALOG SYSTEM', style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('嚴格國際主義網格邊框之對話框。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('CONFIRM')),
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
          border: Border(top: BorderSide(color: Colors.black, width: 2.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('SWISS INTERNATIONAL SHEET', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            const Text('12 欄網格排列之底部面板視圖。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.grid_on, color: Colors.black),
              title: const Text('GRID ALIGNMENT 100%', style: TextStyle(fontWeight: FontWeight.bold)),
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
        title: const Text('SWISS STYLE // 12-COLUMN'),
        actions: [
          IconButton(icon: const Icon(Icons.view_column_sharp), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SWISS TYPOGRAPHY', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('INTERNATIONAL TYPOGRAPHIC STYLE // ZERO GRADIENT', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH IN 12-GRID...',
              leading: const Icon(Icons.search, color: Colors.black),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Colors.black, width: 2.0)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('GRID')),
                ButtonSegment(value: 1, label: Text('TYPE')),
                ButtonSegment(value: 2, label: Text('ALIGN')),
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
                ElevatedButton(onPressed: () {}, child: const Text('SWISS RED')),
                FilledButton(onPressed: () {}, child: const Text('PURE BLACK')),
                OutlinedButton(onPressed: () {}, child: const Text('OUTLINED')),
                TextButton(onPressed: () {}, child: const Text('TEXT LINK')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. INPUTS & CONTROLS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'TYPOGRAPHY_LABEL',
                prefixIcon: Icon(Icons.text_fields, color: Colors.black),
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
                        const Text('STRICT GRID ALIGN', style: TextStyle(fontWeight: FontWeight.w900)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('SQUARE CHECK ITEM', style: TextStyle(fontWeight: FontWeight.w900)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('KERNING VALUE SLIDER', style: TextStyle(fontWeight: FontWeight.w900)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(fontWeight: FontWeight.w900)),
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
                        const Text('HELVETICA POSTER #01', style: TextStyle(fontWeight: FontWeight.w900)),
                        Badge(label: const Text('SWISS'), backgroundColor: const Color(0FFFF0000)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('GRID METRIC: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(fontWeight: FontWeight.w700)),
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
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 2.0))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0FFFF0000),
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: 'GRID'),
            BottomNavigationBarItem(icon: Icon(Icons.title), label: 'TYPE'),
            BottomNavigationBarItem(icon: Icon(Icons.format_align_left), label: 'LAYOUT'),
          ],
        ),
      ),
    );
  }
}
