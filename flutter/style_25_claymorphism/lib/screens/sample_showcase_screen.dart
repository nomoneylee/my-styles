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
  final TextEditingController _textController = TextEditingController(text: 'Soft Claymorphic UI World');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
        title: const Text('🎈 Clay 黏土對話視窗', style: TextStyle(fontWeight: FontWeight.w800)),
        content: const Text('蓬鬆立體雙重浮雕陰影與馬卡龍色調之 Claymorphism 對話框。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('關閉')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('捏一下')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FFF0F5FF),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🧸 Clay 手作軟黏土選單', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
            const SizedBox(height: 12),
            const Text('選擇立體澎膨圓角卡片與馬卡龍主題調色盤。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.toys_outlined, color: Color(0FFFF8DA1)),
              title: const Text('甜甜圈質感模型卡', style: TextStyle(fontWeight: FontWeight.w700)),
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
        title: const Text('Claymorphism Showcase'),
        actions: [
          IconButton(icon: const Icon(Icons.bubble_chart_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Claymorphic UI', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('澎澎軟軟立體雙重內/外陰影與童趣軟萌圓角樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋黏土幾何元件...',
              leading: const Icon(Icons.search, color: Color(0FF718096)),
              elevation: WidgetStateProperty.all(4),
              shadowColor: WidgetStateProperty.all(const Color(0FFC4D0E3)),
              backgroundColor: WidgetStateProperty.all(const Color(0FFF0F5FF)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0), side: const BorderSide(color: Colors.white, width: 2.0)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('軟軟 (Soft)')),
                ButtonSegment(value: 1, label: Text('蓬鬆 (Puffy)')),
                ButtonSegment(value: 2, label: Text('立體 (3D)')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. 黏土按鈕 (Clay Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Pink Clay')),
                FilledButton(onPressed: () {}, child: const Text('Sky Blue Clay')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined Clay')),
                TextButton(onPressed: () {}, child: const Text('Text Link')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與狀態 (Inputs & Toggles)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'CLAY_INPUT_STYLE',
                prefixIcon: Icon(Icons.edit_outlined, color: Color(0FFFF8DA1)),
              ),
            ),
            const SizedBox(height: 16),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('啟用 Clay 雙重凸起陰影', style: TextStyle(fontWeight: FontWeight.w700)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Colors.white, height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('自動調配馬卡龍馬卡龍柔粉', style: TextStyle(fontWeight: FontWeight.w700)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Colors.white, height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('蓬鬆厚度 (Clay Depth)', style: TextStyle(fontWeight: FontWeight.w700)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFFF8DA1), fontWeight: FontWeight.w800)),
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

            Text('3. Clay 立體卡片 (Clay Cards)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Puffy Macaron Widget', style: TextStyle(fontWeight: FontWeight.w800)),
                        Badge(label: const Text('CLAY 3D'), backgroundColor: const Color(0FFFF8DA1)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('黏土塑造進度: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF718096))),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text('4. 視窗與面板 (Overlays)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('Clay Dialog'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('Clay Sheet'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 2.0))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FFE0E8F5),
          selectedItemColor: const Color(0FFFF8DA1),
          unselectedItemColor: const Color(0FF718096),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.smart_toy_outlined), label: '黏土世界'),
            BottomNavigationBarItem(icon: Icon(Icons.palette_outlined), label: '調色盤'),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions_outlined), label: '作品集'),
          ],
        ),
      ),
    );
  }
}
