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
  double _sliderValue = 0.70;
  final TextEditingController _textController = TextEditingController(text: 'BAUHAUS_FORM_FOLLOWS_FUNCTION');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Colors.black, width: 2.5)),
        title: const Text('📐 包浩斯幾何對話框', style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('形隨機能 (Form Follows Function) 設計哲學對話框。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('EXECUTE')),
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
          color: Color(0FFFFB703),
          border: Border(top: BorderSide(color: Colors.black, width: 3.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🔴 包浩斯三原色面板 (Bottom Sheet)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            const Text('強烈幾何構造與色彩對比面板範例。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.architecture, color: Colors.black),
              title: const Text('1919 WEIMAR ARCHIVE', style: TextStyle(fontWeight: FontWeight.w800)),
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
        title: const Text('包浩斯 BAUHAUS 1919'),
        actions: [
          IconButton(icon: const Icon(Icons.crop_square_sharp), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('三原色幾何 UI', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('FORM FOLLOWS FUNCTION // GEOMETRIC DESIGN', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH_GEOMETRY...',
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
                ButtonSegment(value: 0, label: Text('RED', style: TextStyle(fontWeight: FontWeight.w800))),
                ButtonSegment(value: 1, label: Text('YELLOW', style: TextStyle(fontWeight: FontWeight.w800))),
                ButtonSegment(value: 2, label: Text('BLUE', style: TextStyle(fontWeight: FontWeight.w800))),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. 按鈕變體 (Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('PRIMARY (RED)')),
                FilledButton(onPressed: () {}, child: const Text('SECONDARY (BLUE)')),
                OutlinedButton(onPressed: () {}, child: const Text('OUTLINED')),
                TextButton(onPressed: () {}, child: const Text('TEXT LINK')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'BAUHAUS_FIELD',
                prefixIcon: Icon(Icons.category, color: Colors.black),
              ),
            ),
            const SizedBox(height: 16),

            Card(
              color: const Color(0FFFFB703),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('GEOMETRIC SWITCH', style: TextStyle(fontWeight: FontWeight.w900)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('SQUARE CHECKBOX', style: TextStyle(fontWeight: FontWeight.w900)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('COLOR RATIO SLIDER', style: TextStyle(fontWeight: FontWeight.w900)),
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

            Text('3. 卡片與視圖 (Cards)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('WEIMAR COMPOSITION', style: TextStyle(fontWeight: FontWeight.w900)),
                        Badge(label: const Text('CLASSIC', style: TextStyle(color: Colors.white)), backgroundColor: const Color(0FF00509D)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('STRUCTURE: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(fontWeight: FontWeight.w800)),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue, minHeight: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text('4. 彈窗與回饋 (Modals)', style: textTheme.headlineMedium),
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
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 2.5))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FFFFB703),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.change_history), label: 'TRIANGLE'),
            BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: 'SQUARE'),
            BottomNavigationBarItem(icon: Icon(Icons.circle_outlined), label: 'CIRCLE'),
          ],
        ),
      ),
    );
  }
}
