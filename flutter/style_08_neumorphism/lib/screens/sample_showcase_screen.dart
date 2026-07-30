import 'package:flutter/material.dart';

/// 範例展示頁面 (Neumorphism Showcase Screen)
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
  double _sliderValue = 0.75;
  final TextEditingController _textController =
      TextEditingController(text: 'NEUMORPHIC_SOFT_UI');

  Widget _neuContainer({required Widget child, EdgeInsetsGeometry? padding, double radius = 20}) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0FFE0E5EC),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: const [
          BoxShadow(color: Color(0xFFA3B1C6), offset: Offset(5, 5), blurRadius: 10),
          BoxShadow(color: Colors.white, offset: Offset(-5, -5), blurRadius: 10),
        ],
      ),
      child: child,
    );
  }

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FFE0E5EC),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: const Text('💡 雙向立體對話框'),
        content: const Text('同色系擬物陰影雕刻 Alert Dialog。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('確定'),
          ),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FFE0E5EC),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🫧 擬物底部面板 (Bottom Sheet)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('凹凸浮雕微光觸感之 Bottom Sheet 面板。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.fingerprint, color: Color(0FF6D5DFC)),
              title: const Text('生物識別驗證'),
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
        title: const Text('新擬物主義 NEUMORPHISM'),
        actions: [
          IconButton(
            icon: const Icon(Icons.blur_on),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('立體壓印 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('雙重陰影 (Light & Dark Shadows) 與實體按壓觸感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Search Bar
            _neuContainer(
              radius: 18,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '搜尋擬物元件...',
                  prefixIcon: Icon(Icons.search, color: Color(0FF6D5DFC)),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('開關')),
                ButtonSegment(value: 1, label: Text('面板')),
                ButtonSegment(value: 2, label: Text('彈窗')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            // 1. Buttons
            Text('1. 按鈕變體 (Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevated Soft')),
                FilledButton(onPressed: () {}, child: const Text('Tonal Inset')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
                TextButton(onPressed: () {}, child: const Text('Text Link')),
              ],
            ),
            const SizedBox(height: 24),

            // 2. Inputs & Selection
            Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'NEU_INPUT_FIELD',
                prefixIcon: Icon(Icons.tune, color: Color(0FF6D5DFC)),
              ),
            ),
            const SizedBox(height: 16),

            _neuContainer(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('開關狀態 (Switch)', style: TextStyle(fontWeight: FontWeight.bold)),
                      Switch(
                        value: _switchValue,
                        onChanged: (val) => setState(() => _switchValue = val),
                      ),
                    ],
                  ),
                  const Divider(color: Color(0xFFA3B1C6)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('勾選項目 (Checkbox)', style: TextStyle(fontWeight: FontWeight.bold)),
                      Checkbox(
                        value: _checkboxValue,
                        onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                      ),
                    ],
                  ),
                  const Divider(color: Color(0xFFA3B1C6)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('立體滑桿 (Slider)', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF6D5DFC), fontWeight: FontWeight.bold)),
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
            const SizedBox(height: 24),

            // 3. Cards & Views
            Text('3. 卡片與視圖 (Cards)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            _neuContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('NEUMORPHIC CARD', style: TextStyle(fontWeight: FontWeight.bold)),
                      Badge(
                        label: const Text('SOFT UI'),
                        backgroundColor: const Color(0FF6D5DFC),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text('PRESSURE: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF718096))),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(value: _sliderValue),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 4. Modals
            Text('4. 彈窗與回饋 (Modals)', style: textTheme.headlineMedium),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentNavIndex,
        onTap: (idx) => setState(() => _currentNavIndex = idx),
        backgroundColor: const Color(0FFE0E5EC),
        selectedItemColor: const Color(0FF6D5DFC),
        unselectedItemColor: const Color(0FF718096),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: 'TOUCH'),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'SURFACE'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'CONFIG'),
        ],
      ),
    );
  }
}
