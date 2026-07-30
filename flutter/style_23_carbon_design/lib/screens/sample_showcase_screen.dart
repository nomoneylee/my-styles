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
  double _sliderValue = 0.82;
  final TextEditingController _textController = TextEditingController(text: 'IBM Carbon Cluster #092');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FF262626),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0FF393939), width: 1.0),
        ),
        title: const Text('IBM Carbon 系統警告', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        content: const Text('極致硬朗 0px 邊框之 Carbon Design 企業模組與叢集節點警示。', style: TextStyle(color: Color(0FFC6C6C6))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('CONFIRM')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF262626),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🖥️ Carbon Enterprise Modal', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            const Text('檢視與設定 IBM Cloud 數據管道之硬體資源分配。', style: TextStyle(color: Color(0FFC6C6C6))),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.cloud_queue, color: Color(0FF0F62FE)),
              title: const Text('Cluster Node Alpha-01', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              subtitle: const Text('狀態: ACTIVE', style: TextStyle(color: Color(0FFC6C6C6))),
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
        title: const Text('IBM Carbon Design System'),
        actions: [
          IconButton(icon: const Icon(Icons.terminal), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('IBM Carbon Design', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('0px 直角硬朗線條與極高數據吞吐量之企業級系統樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋叢集、數據管道或 API 節點...',
              leading: const Icon(Icons.search, color: Color(0FFC6C6C6)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0FF262626)),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: Color(0FF393939))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('CLUSTERS')),
                ButtonSegment(value: 1, label: Text('PIPELINES')),
                ButtonSegment(value: 2, label: Text('LOGS')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. Carbon 按鈕變體 (Carbon Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Primary IBM Blue')),
                FilledButton(onPressed: () {}, child: const Text('Secondary Gray')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined Sharp')),
                TextButton(onPressed: () {}, child: const Text('Link Button')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 輸入與表單 (Inputs & Forms)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'CLUSTER_NAME',
                prefixIcon: Icon(Icons.dns, color: Color(0FF0F62FE)),
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
                        const Text('開啟高可靠性熱備援 (High Availability)', style: TextStyle(fontWeight: FontWeight.w600)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0FF393939), height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('強制端到端 SSL 密碼加密', style: TextStyle(fontWeight: FontWeight.w600)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0FF393939), height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('記憶體快取上限 (RAM Allocation)', style: TextStyle(fontWeight: FontWeight.w600)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF0F62FE), fontWeight: FontWeight.w700)),
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

            Text('3. Carbon 卡片 (Carbon Cards)', style: textTheme.headlineMedium),
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
                        const Text('IBM Red Hat OpenShift v4.14', style: TextStyle(fontWeight: FontWeight.w600)),
                        Badge(label: const Text('CARBON 11'), backgroundColor: const Color(0FF0F62FE)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('Node Sync: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFC6C6C6))),
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
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0FF393939)))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FF161616),
          selectedItemColor: const Color(0FF0F62FE),
          unselectedItemColor: const Color(0FFC6C6C6),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: 'DASHBOARD'),
            BottomNavigationBarItem(icon: Icon(Icons.storage), label: 'STORAGE'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'SETTINGS'),
          ],
        ),
      ),
    );
  }
}
