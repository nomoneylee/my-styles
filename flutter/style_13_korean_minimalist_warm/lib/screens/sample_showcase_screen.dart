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
  double _sliderValue = 0.75;
  final TextEditingController _textController = TextEditingController(text: 'Korean Creamy Cafe 2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        title: const Text('🍰 韓系甜點通知'),
        content: const Text('奶油溫柔風格大圓角 Alert Dialog 元件。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('稍後')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('享用甜點')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('☕ 韓系奶油選單 (Bottom Sheet)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('極致療癒溫暖質感 Bottom Sheet 面板。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.coffee, color: Color(0FF6B5B52)),
              title: const Text('招牌維也納拿鐵'),
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
        title: const Text('韓系奶油 KOREAN WARM'),
        actions: [
          IconButton(icon: const Icon(Icons.cake_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('溫柔奶油 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('燕麥暖棕、奶油黃與軟萌大膠囊質感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋甜點或韓系咖啡館...',
              leading: const Icon(Icons.search, color: Color(0FF6B5B52)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(28), side: const BorderSide(color: Color(0xFFF3E8DB))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('甜點')),
                ButtonSegment(value: 1, label: Text('咖啡')),
                ButtonSegment(value: 2, label: Text('空間')),
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
                ElevatedButton(onPressed: () {}, child: const Text('Warm Oat')),
                FilledButton(onPressed: () {}, child: const Text('Creamy Yellow')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined Pill')),
                TextButton(onPressed: () {}, child: const Text('Text Link')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'CAFE_NAME',
                prefixIcon: Icon(Icons.storefront_rounded, color: Color(0FF6B5B52)),
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
                        const Text('微糖低脂 (Switch)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0xFFF3E8DB)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('內用座位預約 (Checkbox)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0xFFF3E8DB)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('奶泡甜度 (Slider)', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF6B5B52), fontWeight: FontWeight.bold)),
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
                        const Text('草莓鮮奶油草莓塔', style: TextStyle(fontWeight: FontWeight.bold)),
                        Badge(label: const Text('SWEET'), backgroundColor: const Color(0FFB8DBCE)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('烘焙進度: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF9E8E85))),
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
        selectedItemColor: const Color(0FF6B5B52),
        unselectedItemColor: const Color(0FF9E8E85),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.cookie_outlined), label: '甜點'),
          BottomNavigationBarItem(icon: Icon(Icons.local_cafe_outlined), label: '飲品'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: '收藏'),
        ],
      ),
    );
  }
}
