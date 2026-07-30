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
  double _sliderValue = 0.80;
  final TextEditingController _textController = TextEditingController(text: 'HAY_NORDIC_DESIGN_2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFFF7F6F3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('🌲 北歐木質對話框', style: TextStyle(fontWeight: FontWeight.bold)),
        content: const Text('斯堪地那維亞極簡留白 Alert Dialog 元件。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('取消')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('選購傢俱')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFFF7F6F3),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🌿 斯堪地那維亞選單 (Bottom Sheet)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('柔和自然木色質感 Bottom Sheet 面板。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.chair_outlined, color: Color(0FF4A5D4E)),
              title: const Text('HAY 丹麥經典單椅選單'),
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
        title: const Text('北歐極簡 NORDIC'),
        actions: [
          IconButton(icon: const Icon(Icons.park_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('極簡木質 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('橄欖綠、冷木棕與斯堪地那維亞大留白。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋北歐傢俱或選品店...',
              leading: const Icon(Icons.search, color: Color(0FF4A5D4E)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0xFFF7F6F3)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: const BorderSide(color: Color(0xFFDCD8D0))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('傢俱')),
                ButtonSegment(value: 1, label: Text('燈飾')),
                ButtonSegment(value: 2, label: Text('家飾')),
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
                ElevatedButton(onPressed: () {}, child: const Text('Nordic Green')),
                FilledButton(onPressed: () {}, child: const Text('Wood Brown')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
                TextButton(onPressed: () {}, child: const Text('Text Link')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'DESIGN_COLLECTION',
                prefixIcon: Icon(Icons.chair_alt_rounded, color: Color(0FF4A5D4E)),
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
                        const Text('實木認證標籤 (Switch)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0xFFDCD8D0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('環保再生材質 (Checkbox)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0xFFDCD8D0)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('空間留白比例 (Slider)', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF4A5D4E), fontWeight: FontWeight.bold)),
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
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('COPENHAGEN 羊毛單椅', style: TextStyle(fontWeight: FontWeight.bold)),
                        Badge(label: const Text('NORDIC'), backgroundColor: const Color(0FF7B8E9B)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('庫存狀況: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF6E7871))),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentNavIndex,
        onTap: (idx) => setState(() => _currentNavIndex = idx),
        backgroundColor: const Color(0xFFF7F6F3),
        selectedItemColor: const Color(0FF4A5D4E),
        unselectedItemColor: const Color(0FF6E7871),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.weekend_outlined), label: '傢俱'),
          BottomNavigationBarItem(icon: Icon(Icons.light_outlined), label: '燈飾'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '我的'),
        ],
      ),
    );
  }
}
