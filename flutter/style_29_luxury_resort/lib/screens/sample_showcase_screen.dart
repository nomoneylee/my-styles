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
  double _sliderValue = 0.88;
  final TextEditingController _textController = TextEditingController(text: 'AMAZONIA_LUXURY_SUITE_01');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        title: const Text('🌿 五星級飯店預訂確認', style: TextStyle(fontWeight: FontWeight.w700)),
        content: const Text('沉穩墨綠與香檳金點綴之頂級渡假飯店 SPA 對話視窗。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('變更日期')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('確認預訂')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🍸 Resort SPA & Dining', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            const SizedBox(height: 12),
            const Text('預約飯店香薰 SPA 療程、無邊際泳池與米其林星級晚餐。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.hotel_class, color: Color(0FFC5A059)),
              title: const Text('ROYAL VILLA SUITE PACKAGE', style: TextStyle(fontWeight: FontWeight.w700)),
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
        title: const Text('LUXURY HOTEL & RESORT'),
        actions: [
          IconButton(icon: const Icon(Icons.spa_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Luxury Hotel & Resort', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('沉穩墨綠與暖沙米白配香檳金點綴之渡假飯店樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋尊榮客房、SPA 套裝與美饌...',
              leading: const Icon(Icons.search, color: Color(0FF1B3B2B)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0), side: const BorderSide(color: Color(0FFE5DFD3))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('套房 (Suites)')),
                ButtonSegment(value: 1, label: Text('SPA 療程')),
                ButtonSegment(value: 2, label: Text('美饌 (Dining)')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. 典雅按鈕 (Resort Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Emerald Reserve')),
                FilledButton(onPressed: () {}, child: const Text('Champagne Gold')),
                OutlinedButton(onPressed: () {}, child: const Text('Sage Green')),
                TextButton(onPressed: () {}, child: const Text('Gold Action')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 預訂與偏好設定 (Booking Preferences)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'SUITE_BOOKING_CODE',
                prefixIcon: Icon(Icons.king_bed_outlined, color: Color(0FF1B3B2B)),
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
                        const Text('包含晨間有機養生早餐與機場接送', style: TextStyle(fontWeight: FontWeight.w600)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0FFE5DFD3), height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('預約無邊際海景泳池私人日光浴席', style: TextStyle(fontWeight: FontWeight.w600)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0FFE5DFD3), height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('飯店滿意度滿意指數 (Rating)', style: TextStyle(fontWeight: FontWeight.w600)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFC5A059), fontWeight: FontWeight.w700)),
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

            Text('3. 渡假 Villa 卡片 (Resort Cards)', style: textTheme.headlineMedium),
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
                        const Text('AMAZONIA OCEAN VILLA', style: TextStyle(fontWeight: FontWeight.w700)),
                        Badge(label: const Text('5-STAR RESORT'), backgroundColor: const Color(0FF1B3B2B)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('訂房完成度: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF6E7A6E))),
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
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('Resort Dialog'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('Resort Sheet'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0FFE5DFD3)))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FFF7F4EF),
          selectedItemColor: const Color(0FF1B3B2B),
          unselectedItemColor: const Color(0FF6E7A6E),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.hotel_outlined), label: '度假村'),
            BottomNavigationBarItem(icon: Icon(Icons.pool_outlined), label: '設施與 SPA'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: '我的預訂'),
          ],
        ),
      ),
    );
  }
}
