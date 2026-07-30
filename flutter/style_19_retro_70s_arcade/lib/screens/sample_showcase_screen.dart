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
  double _sliderValue = 0.77;
  final TextEditingController _textController = TextEditingController(text: '70S_VINYL_ARCADE_2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: const BorderSide(color: Colors.black, width: 2.5)),
        title: const Text('🕹️ 70s ARCADE 街機彈窗', style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('70 年代黑膠與 Arcade 復古粗邊框對話框。'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('INSERT COIN')),
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
          color: Color(0FFE3A826),
          border: Border(top: BorderSide(color: Colors.black, width: 3.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('📻 黑膠唱片面板 (Bottom Sheet)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            const Text('美式嬉皮與熱情懷舊風格 Bottom Sheet。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.album, color: Colors.black),
              title: const Text('FUNKY GROOVE 1977', style: TextStyle(fontWeight: FontWeight.w800)),
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
        title: const Text('70S ARCADE FUNK'),
        actions: [
          IconButton(icon: const Icon(Icons.sports_esports), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('復古街機 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('嬉皮橘紅、芥末黃與黑膠唱片厚重圓角質感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH 70S VINYL ALBUMS...',
              leading: const Icon(Icons.search, color: Colors.black),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14), side: const BorderSide(color: Colors.black, width: 2.0)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('VINYL', style: TextStyle(fontWeight: FontWeight.w800))),
                ButtonSegment(value: 1, label: Text('ARCADE', style: TextStyle(fontWeight: FontWeight.w800))),
                ButtonSegment(value: 2, label: Text('HIPPIE', style: TextStyle(fontWeight: FontWeight.w800))),
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
                ElevatedButton(onPressed: () {}, child: const Text('HIPPIE ORANGE')),
                FilledButton(onPressed: () {}, child: const Text('MUSTARD YELLOW')),
                OutlinedButton(onPressed: () {}, child: const Text('OUTLINED')),
                TextButton(onPressed: () {}, child: const Text('TEXT LINK')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'ARCADE_PLAYER_NAME',
                prefixIcon: Icon(Icons.videogame_asset, color: Colors.black),
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
                        const Text('復古音效開關 (Switch)', style: TextStyle(fontWeight: FontWeight.w900)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('黑膠自動重播 (Checkbox)', style: TextStyle(fontWeight: FontWeight.w900)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('復古搖滾音量 (Slider)', style: TextStyle(fontWeight: FontWeight.w900)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFD94E2B), fontWeight: FontWeight.w900)),
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
                        const Text('FUNKY GROOVE RECORD', style: TextStyle(fontWeight: FontWeight.w900)),
                        Badge(label: const Text('70S ROCK'), backgroundColor: const Color(0FFD94E2B)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('TRACK PROGRESS: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF6B4A38), fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue, minHeight: 8),
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
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 2.5))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FFE3A826),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.album), label: 'VINYL'),
            BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: 'ARCADE'),
            BottomNavigationBarItem(icon: Icon(Icons.headset), label: 'FUNK'),
          ],
        ),
      ),
    );
  }
}
