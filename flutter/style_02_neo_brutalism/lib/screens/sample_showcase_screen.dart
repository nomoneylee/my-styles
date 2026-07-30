import 'package:flutter/material.dart';

/// 範例展示頁面 (Neo Brutalism Showcase Screen)
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
  double _sliderValue = 0.65;
  final TextEditingController _textController =
      TextEditingController(text: 'NEO_BRUTALISM_2026');

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Colors.black, width: 3.5),
        ),
        title: const Text('⚠️ 殘酷警示視窗', style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('Neo Brutalism 風格的強烈黑框 Dialog 彈窗呈現。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('關閉'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('明白！'),
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
          color: Color(0FFFFE600),
          border: Border(top: BorderSide(color: Colors.black, width: 4.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('⚡ 殘酷底部面板 (Bottom Sheet)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            const Text('高對比強烈視覺之 Bottom Sheet 範例。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.bolt, color: Colors.black),
              title: const Text('快速執行指令', style: TextStyle(fontWeight: FontWeight.w800)),
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
        title: const Text('新殘酷主義 NEO BRUTALISM'),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_on_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('共用 UI 元件庫', style: textTheme.displayLarge),
            const SizedBox(height: 8),
            Text('粗黑邊框、高飽和色塊與強烈硬陰影樣式。', style: textTheme.bodyLarge),
            const SizedBox(height: 16),

            // Search Bar
            SearchBar(
              hintText: 'SEARCH_COMPONENTS...',
              leading: const Icon(Icons.search, color: Colors.black),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.black, width: 3.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('控制項', style: TextStyle(fontWeight: FontWeight.w800))),
                ButtonSegment(value: 1, label: Text('卡片視圖', style: TextStyle(fontWeight: FontWeight.w800))),
                ButtonSegment(value: 2, label: Text('彈窗區', style: TextStyle(fontWeight: FontWeight.w800))),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            // 1. 按鈕組 (Buttons)
            Text('1. 按鈕變體 (Buttons & Actions)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevated (Yellow)')),
                FilledButton(onPressed: () {}, child: const Text('Filled (Red)')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined (Blue)')),
                TextButton(onPressed: () {}, child: const Text('Text Button')),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                IconButton.filled(
                  style: IconButton.styleFrom(
                    backgroundColor: const Color(0FFFFE600),
                    side: const BorderSide(color: Colors.black, width: 2.5),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.star, color: Colors.black),
                ),
                const SizedBox(width: 12),
                IconButton.outlined(
                  style: IconButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 2.5),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.favorite, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // 2. 輸入與選擇 (Inputs & Selection)
            Text('2. 輸入與選擇 (Input & Selection)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'BRUTAL_INPUT_FIELD',
                prefixIcon: Icon(Icons.terminal, color: Colors.black),
              ),
            ),
            const SizedBox(height: 16),

            Card(
              color: const Color(0xFF00E5FF),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('SWITCH_TRIGGER', style: TextStyle(fontWeight: FontWeight.w900)),
                        Switch(
                          value: _switchValue,
                          onChanged: (val) => setState(() => _switchValue = val),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.black, thickness: 2.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('CHECKBOX_SELECTION', style: TextStyle(fontWeight: FontWeight.w900)),
                        Checkbox(
                          value: _checkboxValue,
                          onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.black, thickness: 2.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('SLIDER_CONTROL', style: TextStyle(fontWeight: FontWeight.w900)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(fontWeight: FontWeight.w900)),
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

            // 3. 卡片與視圖 (Cards & Views)
            Text('3. 卡片與視圖 (Cards & Views)', style: textTheme.headlineMedium),
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
                        Badge(
                          label: const Text('HOT', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white)),
                          backgroundColor: Colors.red,
                          child: const Icon(Icons.local_fire_department, size: 28),
                        ),
                        const Text('STATUS: ACTIVE', style: TextStyle(fontWeight: FontWeight.w900)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('PROGRESS: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(fontWeight: FontWeight.w800)),
                    const SizedBox(height: 6),
                    LinearProgressIndicator(value: _sliderValue, minHeight: 12),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 4. 彈窗與回饋
            Text('4. 彈窗與回饋 (Modals & Feedback)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _showSampleDialog,
                    child: const Text('ALERT DIALOG'),
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
          border: Border(top: BorderSide(color: Colors.black, width: 3.5)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FFFFE600),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.bolt), label: 'MAIN'),
            BottomNavigationBarItem(icon: Icon(Icons.view_module), label: 'COMPONENTS'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'CONFIG'),
          ],
        ),
      ),
    );
  }
}
