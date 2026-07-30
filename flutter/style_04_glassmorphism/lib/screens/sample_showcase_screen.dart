import 'dart:ui';
import 'package:flutter/material.dart';

/// 範例展示頁面 (Glassmorphism Showcase Screen)
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
  double _sliderValue = 0.70;
  final TextEditingController _textController =
      TextEditingController(text: 'GLASS_CRYSTAL_UI_2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: AlertDialog(
          backgroundColor: const Color(0x30FFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: const BorderSide(color: Color(0x50FFFFFF), width: 1.5),
          ),
          title: const Text('💎 毛玻璃彈窗 (Glass Dialog)', style: TextStyle(color: Colors.white)),
          content: const Text('半透明模糊濾鏡與水晶質感 Dialog。', style: TextStyle(color: Colors.white70)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('取消', style: TextStyle(color: Colors.white70)),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('確定'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
          child: Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: const Color(0x35FFFFFF),
              border: const Border(top: BorderSide(color: Color(0x60FFFFFF), width: 1.5)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('✨ 玻璃底部面板 (Glass Sheet)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 12),
                const Text('高雅半透明 BackdropFilter 彈出選單。', style: TextStyle(color: Colors.white70)),
                const SizedBox(height: 20),
                ListTile(
                  leading: const Icon(Icons.blur_on, color: Color(0FF00F2FE)),
                  title: const Text('動態模糊設定', style: TextStyle(color: Colors.white)),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('玻璃擬態 GLASSMORPHISM'),
        actions: [
          IconButton(
            icon: const Icon(Icons.auto_awesome),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0FF0F172A),
              Color(0FF1E1B4B),
              Color(0FF311042),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 100.0, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('晶瑩半透明 UI 元件', style: textTheme.displayLarge),
              const SizedBox(height: 6),
              Text('光影流轉、柔和背景模糊與薄層毛玻璃質感。', style: textTheme.bodyMedium),
              const SizedBox(height: 16),

              // Search Bar
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: SearchBar(
                    hintText: '搜尋晶透元件...',
                    hintStyle: WidgetStateProperty.all(const TextStyle(color: Colors.white60)),
                    textStyle: WidgetStateProperty.all(const TextStyle(color: Colors.white)),
                    leading: const Icon(Icons.search, color: Color(0FF00F2FE)),
                    elevation: WidgetStateProperty.all(0),
                    backgroundColor: WidgetStateProperty.all(const Color(0x20FFFFFF)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Color(0x40FFFFFF), width: 1.2),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Segmented Control
              SegmentedButton<int>(
                segments: const [
                  ButtonSegment(value: 0, label: Text('控制', style: TextStyle(color: Colors.white))),
                  ButtonSegment(value: 1, label: Text('視覺', style: TextStyle(color: Colors.white))),
                  ButtonSegment(value: 2, label: Text('彈窗', style: TextStyle(color: Colors.white))),
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
                  ElevatedButton(onPressed: () {}, child: const Text('Elevated (Neon)')),
                  FilledButton(onPressed: () {}, child: const Text('Filled Glass')),
                  OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
                  TextButton(onPressed: () {}, child: const Text('Text Link')),
                ],
              ),
              const SizedBox(height: 24),

              // 2. Inputs & Selection
              Text('2. 輸入與選擇 (Inputs)', style: textTheme.headlineMedium),
              const SizedBox(height: 12),
              TextField(
                controller: _textController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'CRYSTAL_INPUT',
                  labelStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(Icons.shield, color: Color(0FF00F2FE)),
                ),
              ),
              const SizedBox(height: 16),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Switch 毛玻璃開態', style: TextStyle(color: Colors.white)),
                              Switch(
                                value: _switchValue,
                                onChanged: (val) => setState(() => _switchValue = val),
                              ),
                            ],
                          ),
                          const Divider(color: Color(0x30FFFFFF)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Checkbox 晶透勾選框', style: TextStyle(color: Colors.white)),
                              Checkbox(
                                value: _checkboxValue,
                                onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                              ),
                            ],
                          ),
                          const Divider(color: Color(0x30FFFFFF)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Slider 毛玻璃滑桿', style: TextStyle(color: Colors.white)),
                                  Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF00F2FE))),
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
                ),
              ),
              const SizedBox(height: 24),

              // 3. Cards & Views
              Text('3. 卡片與視圖 (Cards)', style: textTheme.headlineMedium),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('GLASS CONTAINER', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                              Badge(
                                label: const Text('PRO'),
                                backgroundColor: const Color(0FF00F2FE),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text('COMPLETION: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Colors.white70)),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(value: _sliderValue),
                        ],
                      ),
                    ),
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
                    child: FilledButton(
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
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: BottomNavigationBar(
            currentIndex: _currentNavIndex,
            onTap: (idx) => setState(() => _currentNavIndex = idx),
            backgroundColor: const Color(0x20FFFFFF),
            selectedItemColor: const Color(0FF00F2FE),
            unselectedItemColor: Colors.white54,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.blur_circular), label: 'GLASS'),
              BottomNavigationBarItem(icon: Icon(Icons.auto_awesome_mosaic), label: 'COMPONENTS'),
              BottomNavigationBarItem(icon: Icon(Icons.tune), label: 'THEME'),
            ],
          ),
        ),
      ),
    );
  }
}
