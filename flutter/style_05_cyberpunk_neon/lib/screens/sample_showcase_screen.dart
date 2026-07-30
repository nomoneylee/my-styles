import 'package:flutter/material.dart';

/// 範例展示頁面 (Cyberpunk Neon Showcase Screen)
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
  final TextEditingController _textController =
      TextEditingController(text: 'CYBER_CORE_v2.077');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FF0A0A12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: const BorderSide(color: Color(0FFFF007F), width: 2.0),
        ),
        title: const Text('⚠️ SYSTEM_ALERT // 2077', style: TextStyle(color: Color(0FFFF007F), fontWeight: FontWeight.w900)),
        content: const Text('Cyberpunk 霓虹風格之對話框指令視窗。', style: TextStyle(color: Colors.white70)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('ABORT', style: TextStyle(color: Color(0FF00F0FF))),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('EXECUTE'),
          ),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF161622),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0FF00F0FF), width: 2.5)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('⚡ CYBER_DRAWER_INTERFACE',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0FF00F0FF))),
            const SizedBox(height: 12),
            const Text('極客霓虹邊框之 Bottom Sheet 選單。', style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.developer_board, color: Color(0FFFF007F)),
              title: const Text('OVERCLOCK_NEURAL_LINK', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
        title: const Text('CYBERPUNK NEON // 2077'),
        actions: [
          IconButton(
            icon: const Icon(Icons.terminal_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NEON UI ELEMENTS', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('HIGH TECH / LOW LIFE // HARDWARE INTERFACE', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Search Bar
            SearchBar(
              hintText: 'SEARCH_NEURAL_NODES...',
              hintStyle: WidgetStateProperty.all(const TextStyle(color: Colors.white54)),
              textStyle: WidgetStateProperty.all(const TextStyle(color: Colors.white)),
              leading: const Icon(Icons.search, color: Color(0FF00F0FF)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0FF161622)),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0FF00F0FF), width: 1.5),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('CORE', style: TextStyle(color: Colors.white))),
                ButtonSegment(value: 1, label: Text('NODES', style: TextStyle(color: Colors.white))),
                ButtonSegment(value: 2, label: Text('LOGS', style: TextStyle(color: Colors.white))),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            // 1. Buttons
            Text('1. BUTTON VARIANTS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('PINK_NEON')),
                FilledButton(onPressed: () {}, child: const Text('CYAN_FILLED')),
                OutlinedButton(onPressed: () {}, child: const Text('YELLOW_BORDER')),
                TextButton(onPressed: () {}, child: const Text('TEXT_LINK')),
              ],
            ),
            const SizedBox(height: 24),

            // 2. Inputs & Selection
            Text('2. INPUTS & SELECTION', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'NEURAL_INPUT_STRING',
                prefixIcon: Icon(Icons.memory, color: Color(0FF00F0FF)),
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
                        const Text('SWITCH OVERCLOCK', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Switch(
                          value: _switchValue,
                          onChanged: (val) => setState(() => _switchValue = val),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0FF00F0FF)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('CHECKBOX MATRIX', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Checkbox(
                          value: _checkboxValue,
                          onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0FF00F0FF)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('POWER SLIDER', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFFF007F), fontWeight: FontWeight.bold)),
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
            Text('3. CARDS & VIEWS', style: textTheme.headlineMedium),
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
                        const Text('DATA_NODE_01', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                        Badge(
                          label: const Text('ONLINE'),
                          backgroundColor: const Color(0FFFF007F),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('SYNC_PROGRESS: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Colors.white70)),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 4. Modals
            Text('4. MODALS & OVERLAYS', style: textTheme.headlineMedium),
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
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0FFFF007F), width: 2.0)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FF0A0A12),
          selectedItemColor: const Color(0FFFF007F),
          unselectedItemColor: const Color(0FF00F0FF),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.memory), label: 'CORE'),
            BottomNavigationBarItem(icon: Icon(Icons.subtitles), label: 'NODES'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'SYSTEM'),
          ],
        ),
      ),
    );
  }
}
