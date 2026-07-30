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
  double _sliderValue = 0.82;
  final TextEditingController _textController = TextEditingController(text: 'POPEYE_POETIC_MAGAZINE_2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: const BorderSide(color: Colors.black, width: 1.0)),
        title: const Text('📖 日系詩意對話框', style: TextStyle(fontWeight: FontWeight.bold)),
        content: const Text('日系雜誌細線排版與詩意標題對話框。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('閉じる')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('閱讀特輯')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🎋 雜誌專題選單 (Bottom Sheet)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('直排與橫排交錯排版選單視圖。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.book, color: Color(0FFC83E2B)),
              title: const Text('ISSUE #42 東京日常詩意特輯'),
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
        title: const Text('日系雜誌 POETIC MAGAZINE'),
        actions: [
          IconButton(icon: const Icon(Icons.auto_stories), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('幾何詩意 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('淡黃灰紙張、朱紅點綴與極細網格邊框。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋雜誌特輯或詩意選集...',
              leading: const Icon(Icons.search, color: Colors.black),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: const BorderSide(color: Colors.black, width: 1.0)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('特輯')),
                ButtonSegment(value: 1, label: Text('專欄')),
                ButtonSegment(value: 2, label: Text('藝文')),
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
                ElevatedButton(onPressed: () {}, child: const Text('Vermilion Red')),
                FilledButton(onPressed: () {}, child: const Text('Morandi Green')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined Line')),
                TextButton(onPressed: () {}, child: const Text('Text Link')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'MAGAZINE_TITLE',
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
                        const Text('直排閱讀模式 (Switch)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('紙本複本訂閱 (Checkbox)', style: TextStyle(fontWeight: FontWeight.bold)),
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
                            const Text('版面留白率 (Slider)', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFC83E2B), fontWeight: FontWeight.bold)),
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
                        const Text('東京咖啡店筆記 VOL.08', style: TextStyle(fontWeight: FontWeight.bold)),
                        Badge(label: const Text('POETIC'), backgroundColor: const Color(0FFC83E2B)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('閱讀進度: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF777777))),
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
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 1.0))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FFF5F2EB),
          selectedItemColor: const Color(0FFC83E2B),
          unselectedItemColor: const Color(0FF777777),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.article_outlined), label: '雜誌'),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: '專欄'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '作者'),
          ],
        ),
      ),
    );
  }
}
