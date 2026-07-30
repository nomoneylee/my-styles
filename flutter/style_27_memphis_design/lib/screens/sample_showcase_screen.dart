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
  double _sliderValue = 0.90;
  final TextEditingController _textController = TextEditingController(text: 'MEMPHIS_80S_POP_ART!');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FFFFE600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: Colors.black, width: 3.5),
        ),
        title: const Text('⚡ MEMPHIS 80S ALERT!', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
        content: const Text('大膽鮮艷撞色、幾何斑點與 3px 粗黑邊框之孟菲斯風格對話視窗！', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL', style: TextStyle(color: Colors.black))),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('POP IT!')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF00E5FF),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
        side: BorderSide(color: Colors.black, width: 3.5),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🎉 孟菲斯後現代幾何選單', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            const Text('選擇波浪印花、幾何點陣與撞色浮點圖案。', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.star, color: Color(0FFFF007F)),
              title: const Text('80S RETRO POP ART MODULE', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
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
        title: const Text('MEMPHIS DESIGN 80S'),
        actions: [
          IconButton(icon: const Icon(Icons.shapes_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('MEMPHIS 80S POP', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('80 年代孟菲斯後現代主義撞色與粗黑幾何邊框樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH IN MEMPHIS PATTERNS...',
              leading: const Icon(Icons.search, color: Colors.black),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: const BorderSide(color: Colors.black, width: 3.0)),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('[01] PINK')),
                ButtonSegment(value: 1, label: Text('[02] YELLOW')),
                ButtonSegment(value: 2, label: Text('[03] CYAN')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. 孟菲斯按鈕 (Memphis Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('MAGENTA PINK')),
                FilledButton(onPressed: () {}, child: const Text('ELECTRIC YELLOW')),
                OutlinedButton(onPressed: () {}, child: const Text('CYAN BLUE')),
                TextButton(onPressed: () {}, child: const Text('QUICK POP LINK')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與表單 (Inputs & Controls)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'MEMPHIS_ID',
                prefixIcon: Icon(Icons.flash_on, color: Colors.black),
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
                        const Text('啟用波浪點陣動態背景 (Wave Pattern)', style: TextStyle(fontWeight: FontWeight.w900)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20, thickness: 2.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('開啟幾何傾斜疊加視角 (Tilt Angle)', style: TextStyle(fontWeight: FontWeight.w900)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20, thickness: 2.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('色彩飽和度 (POP CHROMA)', style: TextStyle(fontWeight: FontWeight.w900)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFFF007F), fontWeight: FontWeight.w900)),
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

            Text('3. 孟菲斯卡片 (Memphis Cards)', style: textTheme.headlineMedium),
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
                        const Text('POSTMODERN ART 1981', style: TextStyle(fontWeight: FontWeight.w900)),
                        Badge(label: const Text('MEMPHIS'), backgroundColor: const Color(0FFFF007F)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('POP RHYTHM: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
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
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('POP DIALOG'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('POP SHEET'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 3.0))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0FFFF007F),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.interests), label: 'POP 80S'),
            BottomNavigationBarItem(icon: Icon(Icons.palette), label: 'PATTERN'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'INFO'),
          ],
        ),
      ),
    );
  }
}
