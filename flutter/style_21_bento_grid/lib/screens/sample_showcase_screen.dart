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
  double _sliderValue = 0.78;
  final TextEditingController _textController = TextEditingController(text: 'gpt-4o-realtime-bento');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FF18181B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0FF27272A), width: 1.0),
        ),
        title: const Text('⚡ AI 模型控制台提示', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        content: const Text('已更新 Bento 網格模組權重，當前模型即時算力輸出穩定。', style: TextStyle(color: Color(0FFA1A1AA))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('取消')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('部署更新')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF18181B),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('📊 Bento 數據視覺化模組', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)),
            const SizedBox(height: 12),
            const Text('選擇要將其嵌入儀表板之微型組件卡片。', style: TextStyle(color: Color(0FFA1A1AA))),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.auto_awesome, color: Color(0FF6366F1)),
              title: const Text('Neural Latency Graph', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              subtitle: const Text('實時延遲: 42ms', style: TextStyle(color: Color(0FFA1A1AA))),
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
        title: const Text('AI DASHBOARD // BENTO GRID'),
        actions: [
          IconButton(icon: const Icon(Icons.bolt), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bento AI Dashboard', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('極致深色幾何網格與高科技微光澤控制台樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋 AI 模組、模型 API 或權重參數...',
              leading: const Icon(Icons.search, color: Color(0FFA1A1AA)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0FF18181B)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: const BorderSide(color: Color(0FF27272A))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('總覽 (Overview)')),
                ButtonSegment(value: 1, label: Text('模型 (Models)')),
                ButtonSegment(value: 2, label: Text('監控 (Telemetry)')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. 動作控制項 (Action Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Primary Trigger')),
                FilledButton(onPressed: () {}, child: const Text('Cyan Glow')),
                OutlinedButton(onPressed: () {}, child: const Text('Grid Outline')),
                TextButton(onPressed: () {}, child: const Text('Quick Link')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與狀態 (Inputs & Toggles)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'MODEL_ID',
                prefixIcon: Icon(Icons.memory, color: Color(0FF6366F1)),
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
                        const Text('即時流式推論 (Streaming Inference)', style: TextStyle(fontWeight: FontWeight.w600)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0FF27272A), height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('啟用 GPU 加速快取', style: TextStyle(fontWeight: FontWeight.w600)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0FF27272A), height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('算力分配比例 (Allocation)', style: TextStyle(fontWeight: FontWeight.w600)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF06B6D4), fontWeight: FontWeight.w700)),
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

            Text('3. Bento 卡片網格 (Bento Cards)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.bolt, color: Color(0FF06B6D4)),
                          const SizedBox(height: 8),
                          const Text('78.4 TFLOPS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                          const Text('晶片負載率', style: TextStyle(color: Color(0FFA1A1AA), fontSize: 12)),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(value: _sliderValue),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.auto_awesome, color: Color(0FF6366F1)),
                          const SizedBox(height: 8),
                          const Text('99.98%', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                          const Text('系統可用性', style: TextStyle(color: Color(0FFA1A1AA), fontSize: 12)),
                          const SizedBox(height: 8),
                          const LinearProgressIndicator(value: 0.99),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            Text('4. 視窗與面板 (Overlays)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('即時 Dialog'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('Bento Sheet'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0FF27272A)))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FF09090B),
          selectedItemColor: const Color(0FF6366F1),
          unselectedItemColor: const Color(0FFA1A1AA),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: '便當盒'),
            BottomNavigationBarItem(icon: Icon(Icons.analytics_outlined), label: '數據圖表'),
            BottomNavigationBarItem(icon: Icon(Icons.tune), label: '微調設置'),
          ],
        ),
      ),
    );
  }
}
