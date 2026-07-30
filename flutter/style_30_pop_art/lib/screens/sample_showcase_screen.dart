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
  double _sliderValue = 0.95;
  final TextEditingController _textController = TextEditingController(text: 'BOOM! POP_ART_HERO_2026!');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FFFFE500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.black, width: 4.0),
        ),
        title: const Text('💥 POW! 漫畫驚嘆號提示', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
        content: const Text('Roy Lichtenstein 美波普 Halftone 斑點與對話框風格之 Pop Art Alert！', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('SKIP!', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900))),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('KABOOM!')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FFFF2A2A),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        side: BorderSide(color: Colors.black, width: 4.0),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🗯️ 漫畫英雄技能與道具選單', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            const Text('選擇三原色 Halftone 斑點斑點與漫畫對話氣泡貼紙。', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.bolt, color: Color(0FFFFE500)),
              title: const Text('SUPERHERO BOOM ACTION STICKER', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900)),
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
        title: const Text('COMIC POP ART // 2026'),
        actions: [
          IconButton(icon: const Icon(Icons.auto_awesome), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('COMIC POP ART!', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('美式漫畫原色 Halftone 網點與粗黑對話框樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH COMIC SPEECH BUBBLES...',
              leading: const Icon(Icons.search, color: Colors.black),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6), side: const BorderSide(color: Colors.black, width: 3.5)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('BOOM!')),
                ButtonSegment(value: 1, label: Text('POW!')),
                ButtonSegment(value: 2, label: Text('ZAP!')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. 漫畫波普按鈕 (Pop Art Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('RED BLAST')),
                FilledButton(onPressed: () {}, child: const Text('YELLOW POW')),
                OutlinedButton(onPressed: () {}, child: const Text('BLUE ZAP')),
                TextButton(onPressed: () {}, child: const Text('QUICK HERO LINK')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 漫畫角色控制 (Comic Controls)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'SUPERHERO_ALIAS',
                prefixIcon: Icon(Icons.shield, color: Colors.black),
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
                        const Text('啟用 Halftone 網點背景質感', style: TextStyle(fontWeight: FontWeight.w900)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20, thickness: 2.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('開啟 3.5px 手繪黑邊對話框框', style: TextStyle(fontWeight: FontWeight.w900)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20, thickness: 2.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('英雄能量極限 (HERO POWER)', style: TextStyle(fontWeight: FontWeight.w900)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFFF2A2A), fontWeight: FontWeight.w900)),
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

            Text('3. 漫畫卡片與進度 (Comic Cards)', style: textTheme.headlineMedium),
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
                        const Text('CAPTAIN POP ART #01', style: TextStyle(fontWeight: FontWeight.w900)),
                        Badge(label: const Text('POP ART'), backgroundColor: const Color(0FFFF2A2A)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('COMIC IMPACT: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
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
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('POW DIALOG'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('BOOM SHEET'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 3.5))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0FFFF2A2A),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'COMIC'),
            BottomNavigationBarItem(icon: Icon(Icons.flash_on), label: 'HERO'),
            BottomNavigationBarItem(icon: Icon(Icons.workspace_premium), label: 'BADGE'),
          ],
        ),
      ),
    );
  }
}
