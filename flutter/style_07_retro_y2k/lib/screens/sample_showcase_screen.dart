import 'package:flutter/material.dart';

/// 範例展示頁面 (Retro Y2K Showcase Screen)
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
  final TextEditingController _textController =
      TextEditingController(text: 'Y2K_CYBER_BABY_2000');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFFFDF0F8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Color(0FFFF0080), width: 2.5),
        ),
        title: const Text('💖 Y2K POP ALERT!', style: TextStyle(color: Color(0FFFF0080), fontWeight: FontWeight.w900)),
        content: const Text('千禧復古炫彩風格 Alert Dialog 元件。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CLOSE'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('LOVE IT!'),
          ),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFFFDF0F8),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0FFFF0080), width: 3.0)),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('✨ Y2K POP SHEET',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0FFFF0080))),
            const SizedBox(height: 12),
            const Text('千禧年流行質感之 Bottom Sheet 面板。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.music_note, color: Color(0FF7B2CBF)),
              title: const Text('PLAYLIST 2000s', style: TextStyle(fontWeight: FontWeight.bold)),
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
        title: const Text('復古 Y2K RETRO 2000s'),
        actions: [
          IconButton(
            icon: const Icon(Icons.stars),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('千禧流行 UI 元件', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('粉紅光澤、銀電炫彩與 Y2K 復古潮流質感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Search Bar
            SearchBar(
              hintText: 'SEARCH Y2K STUFF...',
              leading: const Icon(Icons.search, color: Color(0FFFF0080)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Color(0FFFF0080), width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('POP')),
                ButtonSegment(value: 1, label: Text('GLAM')),
                ButtonSegment(value: 2, label: Text('MODALS')),
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
                ElevatedButton(onPressed: () {}, child: const Text('POPPING PINK')),
                FilledButton(onPressed: () {}, child: const Text('ELECTRIC PURPLE')),
                OutlinedButton(onPressed: () {}, child: const Text('OUTLINED')),
                TextButton(onPressed: () {}, child: const Text('TEXT LINK')),
              ],
            ),
            const SizedBox(height: 24),

            // 2. Inputs & Selection
            Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Y2K_USERNAME',
                prefixIcon: Icon(Icons.favorite, color: Color(0FFFF0080)),
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
                        const Text('GLITTER MODE (Switch)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Switch(
                          value: _switchValue,
                          onChanged: (val) => setState(() => _switchValue = val),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0FFFF0080)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('AUTO SYNC (Checkbox)', style: TextStyle(fontWeight: FontWeight.bold)),
                        Checkbox(
                          value: _checkboxValue,
                          onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0FFFF0080)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('BASS BOOST (Slider)', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFFF0080), fontWeight: FontWeight.bold)),
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
                        const Text('Y2K MUSIC PLAYER', style: TextStyle(fontWeight: FontWeight.bold)),
                        Badge(
                          label: const Text('TOP 100'),
                          backgroundColor: const Color(0FFFF0080),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('TRACK PROGRESS: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF8E5B9D))),
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
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0FFFF0080),
        unselectedItemColor: const Color(0FF7B2CBF),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.album), label: 'MUSIC'),
          BottomNavigationBarItem(icon: Icon(Icons.sparkles), label: 'STYLE'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'FAV'),
        ],
      ),
    );
  }
}
