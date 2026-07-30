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
  double _sliderValue = 0.94;
  final TextEditingController _textController = TextEditingController(text: 'ORBITAL_HUD_SYS_2026_NASA');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FF0B1A2D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: Color(0FF00FFCC), width: 1.5),
        ),
        title: const Text('🛰️ 太空艙 HUD 軌道警示', style: TextStyle(color: Color(0FF00FFCC), fontWeight: FontWeight.w800)),
        content: const Text('太空人抬頭顯示器、對焦瞄準刻度與螢光青綠系統警示。', style: TextStyle(color: Color(0FF5091B2))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('ABORT')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('ENGAGE THRUSTERS')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF0B1A2D),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
        side: BorderSide(color: Color(0FF00FFCC), width: 1.0),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🚀 太空站資源監控面板', style: TextStyle(color: Color(0FF00FFCC), fontSize: 18, fontWeight: FontWeight.w800)),
            const SizedBox(height: 12),
            const Text('檢視國際太空站生命維持系統與氧氣壓力指標。', style: TextStyle(color: Color(0FF5091B2))),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.rocket_launch, color: Color(0FFFF9900)),
              title: const Text('ORBITAL VELOCITY: 27,600 KM/H', style: TextStyle(color: Color(0FF00FFCC), fontWeight: FontWeight.w700)),
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
        title: const Text('SPACE UI // NASA HUD'),
        actions: [
          IconButton(icon: const Icon(Icons.radar), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NASA HUD COCKPIT', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('深邃太空黑與螢光青綠對焦刻度 HUD 抬頭顯示樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: 'SEARCH ORBITAL TARGETS...',
              leading: const Icon(Icons.search, color: Color(0FF00FFCC)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0FF0B1A2D)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: const BorderSide(color: Color(0FF00FFCC))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('RADAR')),
                ButtonSegment(value: 1, label: Text('ORBIT')),
                ButtonSegment(value: 2, label: Text('TELEMETRY')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. HUD 觸發按鈕 (HUD Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('CYAN RADAR')),
                FilledButton(onPressed: () {}, child: const Text('SOLAR AMBER')),
                OutlinedButton(onPressed: () {}, child: const Text('GRID OUTLINE')),
                TextButton(onPressed: () {}, child: const Text('SYSTEM LINK')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 艙內數據控制 (Telemetry Controls)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'TARGET_COORDINATES',
                prefixIcon: Icon(Icons.gps_fixed, color: Color(0FF00FFCC)),
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
                        const Text('啟用姿態控制反推火箭 (RCS Control)', style: TextStyle(color: Color(0FF00FFCC), fontWeight: FontWeight.w700)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0FF00FFCC), height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('自動追蹤國際太空站 Docking 姿態', style: TextStyle(color: Color(0FF00FFCC), fontWeight: FontWeight.w700)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0FF00FFCC), height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('主推進器輸出功率 (THRUST)', style: TextStyle(color: Color(0FF00FFCC), fontWeight: FontWeight.w700)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFFF9900), fontWeight: FontWeight.w800)),
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

            Text('3. HUD 卡片網格 (HUD Cards)', style: textTheme.headlineMedium),
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
                        const Text('ARTEMIS MOON MISSION 2026', style: TextStyle(color: Color(0FF00FFCC), fontWeight: FontWeight.w800)),
                        Badge(label: const Text('NASA HUD'), backgroundColor: const Color(0FF00FFCC)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('TRAJECTORY SYNC: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF5091B2))),
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
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('HUD DIALOG'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('HUD SHEET'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0FF00FFCC)))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FF050B14),
          selectedItemColor: const Color(0FF00FFCC),
          unselectedItemColor: const Color(0FF5091B2),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.navigation_outlined), label: 'HUD 抬頭'),
            BottomNavigationBarItem(icon: Icon(Icons.satellite_alt_outlined), label: '軌道追蹤'),
            BottomNavigationBarItem(icon: Icon(Icons.tune), label: '艙內控制'),
          ],
        ),
      ),
    );
  }
}
