import 'package:flutter/material.dart';

/// 範例展示頁面 (Soft Organic Showcase Screen)
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
  double _sliderValue = 0.60;
  final TextEditingController _textController =
      TextEditingController(text: 'ORGANIC_BOTANICAL_LIVING');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        title: const Text('🌿 自然溫和對話框'),
        content: const Text('大地質感大圓角 Alert Dialog 元件。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('返回'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('確認'),
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
          color: Color(0xFFF7FAF7),
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🍃 有機生活面板 (Bottom Sheet)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('圓潤舒服之彈出式選單與面板。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.eco, color: Color(0FF2E5A44)),
              title: const Text('植栽維護計畫'),
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
        title: const Text('柔和有機 SOFT ORGANIC'),
        actions: [
          IconButton(
            icon: const Icon(Icons.spa_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('自然共生 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('大地色調、大膠囊弧形與極致放術質感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Search Bar
            SearchBar(
              hintText: '搜尋植物或有機選項...',
              leading: const Icon(Icons.search, color: Color(0FF2E5A44)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0xFFF7FAF7)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: const BorderSide(color: Color(0xFFD5E3DB), width: 1.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('日常')),
                ButtonSegment(value: 1, label: Text('植栽')),
                ButtonSegment(value: 2, label: Text('紀錄')),
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
                ElevatedButton(onPressed: () {}, child: const Text('Forest Green')),
                FilledButton(onPressed: () {}, child: const Text('Terracotta')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined Pill')),
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
                labelText: 'BOTANICAL_NAME',
                prefixIcon: Icon(Icons.park, color: Color(0FF2E5A44)),
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
                        const Text('自動灌溉 (Switch)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Switch(
                          value: _switchValue,
                          onChanged: (val) => setState(() => _switchValue = val),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0xFFD5E3DB)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('有機認證 (Checkbox)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Checkbox(
                          value: _checkboxValue,
                          onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0xFFD5E3DB)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('土壤濕度 (Slider)', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF2E5A44), fontWeight: FontWeight.bold)),
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

            // 3. Cards & Views
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
                        const Text('龜背竹日常狀態', style: TextStyle(fontWeight: FontWeight.bold)),
                        Badge(
                          label: const Text('HEALTHY'),
                          backgroundColor: const Color(0FF2E5A44),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('光照補充率: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF688175))),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
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
        backgroundColor: const Color(0xFFF7FAF7),
        selectedItemColor: const Color(0FF2E5A44),
        unselectedItemColor: const Color(0FF688175),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: '首頁'),
          BottomNavigationBarItem(icon: Icon(Icons.nature_people), label: '花園'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
      ),
    );
  }
}
