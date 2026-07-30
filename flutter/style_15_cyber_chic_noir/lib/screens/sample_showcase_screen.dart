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
  final TextEditingController _textController = TextEditingController(text: 'NOIR_LOUNGE_BAR_2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FF180A17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0FFFF2A85), width: 2.0),
        ),
        title: const Text('🍸 賽博微燻警示', style: TextStyle(color: Color(0FFFF2A85), fontWeight: FontWeight.bold)),
        content: const Text('深夜酒紅與霓虹微光質感對話框。', style: TextStyle(color: Colors.white70)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('DISMISS')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('DRINK NOW')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF251324),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🌃 深夜 Lounge 面板 (Bottom Sheet)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0FFFF2A85))),
            const SizedBox(height: 12),
            const Text('賽博時尚暗黑酒吧選單。', style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.local_bar, color: Color(0FFFFE600)),
              title: const Text('NEON MAGENTA COCKTAIL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
        title: const Text('賽博微燻 CYBER NOIR'),
        actions: [
          IconButton(icon: const Icon(Icons.nightlife_rounded), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('微燻霓虹 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('深酒紅基底、霓虹洋紅與螢光黃柔光質感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH_NOIR_MENU...',
              hintStyle: WidgetStateProperty.all(const TextStyle(color: Colors.white54)),
              textStyle: WidgetStateProperty.all(const TextStyle(color: Colors.white)),
              leading: const Icon(Icons.search, color: Color(0FFFF2A85)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0FF251324)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: const BorderSide(color: Color(0FFFF2A85), width: 1.5)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('LOUNGE', style: TextStyle(color: Colors.white))),
                ButtonSegment(value: 1, label: Text('DRINKS', style: TextStyle(color: Colors.white))),
                ButtonSegment(value: 2, label: Text('VIBES', style: TextStyle(color: Colors.white))),
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
                ElevatedButton(onPressed: () {}, child: const Text('NEON PINK')),
                FilledButton(onPressed: () {}, child: const Text('ELECTRIC YELLOW')),
                OutlinedButton(onPressed: () {}, child: const Text('OUTLINED')),
                TextButton(onPressed: () {}, child: const Text('TEXT LINK')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'NOIR_MEMBER_ID',
                prefixIcon: Icon(Icons.local_bar_rounded, color: Color(0FFFF2A85)),
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
                        const Text('VIP 柔光模式 (Switch)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0FFFF2A85)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('自動調酒推播 (Checkbox)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0FFFF2A85)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('微燻氛圍值 (Slider)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFFF2A85), fontWeight: FontWeight.bold)),
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
                        const Text('MIDNIGHT JAZZ VIBE', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                        Badge(label: const Text('NOIR'), backgroundColor: const Color(0FFFF2A85)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('VIBE LEVEL: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFA88FA6))),
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
        backgroundColor: const Color(0FF180A17),
        selectedItemColor: const Color(0FFFF2A85),
        unselectedItemColor: const Color(0FFA88FA6),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.wine_bar), label: 'BAR'),
          BottomNavigationBarItem(icon: Icon(Icons.graphic_eq), label: 'JAZZ'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'VIP'),
        ],
      ),
    );
  }
}
