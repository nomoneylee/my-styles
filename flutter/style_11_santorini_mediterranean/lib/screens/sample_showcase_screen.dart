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
  double _sliderValue = 0.85;
  final TextEditingController _textController = TextEditingController(text: 'Santorini Resort Villa 2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: const Text('🌊 聖托里尼度假通知'),
        content: const Text('藍白地中海風美學 Alert Dialog 元件。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('取消')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('確認預訂')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('☀️ 愛琴海日照選單 (Bottom Sheet)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('清爽藍白海岸風格 Bottom Sheet 選單。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.wb_sunny_outlined, color: Color(0FFF5A623)),
              title: const Text('日落看台觀景席位'),
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
        title: const Text('地中海風 SANTORINI'),
        actions: [
          IconButton(icon: const Icon(Icons.sailing_rounded), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('藍白海岸 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('愛琴海蔚藍、陽光金黃與純白建築質感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋度假 Villa 或島嶼...',
              leading: const Icon(Icons.search, color: Color(0FF0055B8)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18), side: const BorderSide(color: Color(0xFFCBE3FB))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('度假')),
                ButtonSegment(value: 1, label: Text('設施')),
                ButtonSegment(value: 2, label: Text('預訂')),
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
                ElevatedButton(onPressed: () {}, child: const Text('Ocean Blue')),
                FilledButton(onPressed: () {}, child: const Text('Sun Yellow')),
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
                labelText: 'RESORT_LOCATION',
                prefixIcon: Icon(Icons.hotel_rounded, color: Color(0FF0055B8)),
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
                        const Text('海景套房升級 (Switch)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0xFFCBE3FB)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('含希臘早餐 (Checkbox)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0xFFCBE3FB)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('陽光曝曬指數 (Slider)', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF0055B8), fontWeight: FontWeight.bold)),
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
                        const Text('伊亞日落觀景套房', style: TextStyle(fontWeight: FontWeight.bold)),
                        Badge(label: const Text('POPULAR'), backgroundColor: const Color(0FFF5A623)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('訂房滿載度: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF4A7B9D))),
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
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0FF0055B8),
        unselectedItemColor: const Color(0FF4A7B9D),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.beach_access), label: '度假'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: '探索'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
      ),
    );
  }
}
