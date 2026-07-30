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
  double _sliderValue = 0.95;
  final TextEditingController _textController = TextEditingController(text: 'EDITORIAL_EXHIBITION_01/2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Colors.black, width: 2.0)),
        title: const Text('[01/02] 展覽策展警示', style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('當代藝術展覽冊大號標註與實驗性 layout 對話框。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('DISMISS')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('ENTER EXHIBITION')),
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
            const Text('📄 展覽目錄選單 (Bottom Sheet)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            const Text('頁碼感標註與小字號說明欄。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.collections_bookmark, color: Color(0FF0022FF)),
              title: const Text('[CATALOGUE #08] CONTEMPORARY ART 2026', style: TextStyle(fontWeight: FontWeight.w800)),
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
        title: const Text('[01] EDITORIAL // EXHIBITION'),
        actions: [
          IconButton(icon: const Icon(Icons.art_track_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('CONCEPTUAL UI', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('EDITORIAL EXHIBITION CATALOGUE // 2026', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH IN CATALOGUE #01...',
              leading: const Icon(Icons.search, color: Colors.black),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Colors.black, width: 1.5)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('[01]ROOM')),
                ButtonSegment(value: 1, label: Text('[02]WORK')),
                ButtonSegment(value: 2, label: Text('[03]TEXT')),
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
                ElevatedButton(onPressed: () {}, child: const Text('BLUE INDEX')),
                FilledButton(onPressed: () {}, child: const Text('RED SIGNAL')),
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
                labelText: 'EXHIBITION_ENTRY_ID',
                prefixIcon: Icon(Icons.pin, color: Colors.black),
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
                        const Text('CURATORIAL AUDIO (Switch)', style: TextStyle(fontWeight: FontWeight.w900)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('EXHIBITION CATALOGUE ACCESS', style: TextStyle(fontWeight: FontWeight.w900)),
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
                            const Text('CONTRAST RATIO SLIDER', style: TextStyle(fontWeight: FontWeight.w900)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF0022FF), fontWeight: FontWeight.w900)),
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
                        const Text('EXHIBITION ROOM A // 01', style: TextStyle(fontWeight: FontWeight.w900)),
                        Badge(label: const Text('CATALOGUE'), backgroundColor: const Color(0FF0022FF)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('PROGRESS: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF666666))),
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
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 1.5))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0FF0022FF),
          unselectedItemColor: const Color(0FF666666),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_sharp), label: '[01]INDEX'),
            BottomNavigationBarItem(icon: Icon(Icons.collections_outlined), label: '[02]GALLERY'),
            BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: '[03]INFO'),
          ],
        ),
      ),
    );
  }
}
