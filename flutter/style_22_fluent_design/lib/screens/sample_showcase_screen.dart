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
  double _sliderValue = 0.65;
  final TextEditingController _textController = TextEditingController(text: 'Windows 11 Fluent 2 Design');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        title: const Text('Microsoft Fluent 2 對話框', style: TextStyle(fontWeight: FontWeight.w600)),
        content: const Text('具備標準 8px 圓角與亞克力視覺質感的 Fluent 對話視窗。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('取消')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('確定')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🪟 Fluent 系統控制選單', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            const Text('選擇要執行的 Windows 系統操作與亞克力主題偏好設定。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.tune, color: Color(0FF0078D4)),
              title: const Text('開啟 Fluent 控制板', style: TextStyle(fontWeight: FontWeight.w600)),
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
        title: const Text('Microsoft Fluent 2 Showcase'),
        actions: [
          IconButton(icon: const Icon(Icons.window), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fluent 2 Design System', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('微軟跨平台設計語言與現代 Windows 11 精致視覺樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋 Fluent 元件與 API...',
              leading: const Icon(Icons.search, color: Color(0FF606060)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0), side: const BorderSide(color: Color(0FFE0E0E0))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('系統概覽')),
                ButtonSegment(value: 1, label: Text('控制項')),
                ButtonSegment(value: 2, label: Text('狀態頁')],
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. Fluent 按鈕 (Fluent Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Primary Accent')),
                FilledButton(onPressed: () {}, child: const Text('Secondary Tint')),
                OutlinedButton(onPressed: () {}, child: const Text('Standard Outline')),
                TextButton(onPressed: () {}, child: const Text('Subtle Text')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與切換 (Inputs & Toggles)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'SYSTEM_SETTINGS',
                prefixIcon: Icon(Icons.desktop_windows, color: Color(0FF0078D4)),
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
                        const Text('開啓 Mica 雲母背景效果', style: TextStyle(fontWeight: FontWeight.w600)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0FFE0E0E0), height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('自動對齊系統夜間模式', style: TextStyle(fontWeight: FontWeight.w600)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0FFE0E0E0), height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('亞克力透明度 (Acrylic Opacity)', style: TextStyle(fontWeight: FontWeight.w600)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF0078D4), fontWeight: FontWeight.w700)),
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

            Text('3. Fluent 卡片 (Fluent Cards)', style: textTheme.headlineMedium),
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
                        const Text('Windows 11 Build 26100', style: TextStyle(fontWeight: FontWeight.w600)),
                        Badge(label: const Text('Fluent 2'), backgroundColor: const Color(0FF0078D4)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('系統安裝進度: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF606060))),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text('4. 視窗與彈窗 (Overlays)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('Alert Dialog'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('Bottom Sheet'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0FFE0E0E0)))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FFF3F3F3),
          selectedItemColor: const Color(0FF0078D4),
          unselectedItemColor: const Color(0FF606060),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '主頁'),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: '應用庫'),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: '設定'),
          ],
        ),
      ),
    );
  }
}
