import 'package:flutter/material.dart';

/// 範例展示頁面 (Terminal Dashboard Showcase Screen)
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
  final TextEditingController _textController =
      TextEditingController(text: 'root@matrix-node-01:~#');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FF0C100C),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0FF00FF66), width: 2.0),
        ),
        title: const Text('> TERMINAL_EXEC_PROMPT', style: TextStyle(color: Color(0FF00FF66), fontFamily: 'Courier', fontWeight: FontWeight.bold)),
        content: const Text('> Execute system diagnostics overlay command?', style: TextStyle(color: Color(0FF00FF66), fontFamily: 'Courier')),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('[ABORT]', style: TextStyle(color: Color(0FF00E5FF), fontFamily: 'Courier')),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('[EXECUTE]', style: TextStyle(fontFamily: 'Courier')),
          ),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF121A13),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0FF00FF66), width: 2.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('> TERMINAL_DRAWER_BUFFER',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0FF00FF66), fontFamily: 'Courier')),
            const SizedBox(height: 12),
            const Text('> Active processes and thread logs buffer.', style: TextStyle(color: Color(0FF009933), fontFamily: 'Courier')),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.code, color: Color(0FF00FF66)),
              title: const Text('cat /var/log/syslog', style: TextStyle(color: Color(0FF00FF66), fontFamily: 'Courier')),
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
        title: const Text('root@terminal:~# ./showcase.sh'),
        actions: [
          IconButton(
            icon: const Icon(Icons.terminal),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('> UI_ELEMENTS_INIT', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('STATUS: ALL_SYSTEMS_OPERATIONAL // 2026', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Search Bar
            SearchBar(
              hintText: 'grep -i "component"...',
              hintStyle: WidgetStateProperty.all(const TextStyle(color: Color(0FF009933), fontFamily: 'Courier')),
              textStyle: WidgetStateProperty.all(const TextStyle(color: Color(0FF00FF66), fontFamily: 'Courier')),
              leading: const Icon(Icons.search, color: Color(0FF00FF66)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0FF121A13)),
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0FF00FF66), width: 1.5),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('[1]IO', style: TextStyle(fontFamily: 'Courier', color: Color(0FF00FF66)))),
                ButtonSegment(value: 1, label: Text('[2]SYS', style: TextStyle(fontFamily: 'Courier', color: Color(0FF00FF66)))),
                ButtonSegment(value: 2, label: Text('[3]LOG', style: TextStyle(fontFamily: 'Courier', color: Color(0FF00FF66)))),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            // 1. Buttons
            Text('> 1. BUTTON_VARIANTS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('[ELEVATED_GREEN]')),
                FilledButton(onPressed: () {}, child: const Text('[FILLED_CYAN]')),
                OutlinedButton(onPressed: () {}, child: const Text('[OUTLINED]')),
                TextButton(onPressed: () {}, child: const Text('cat_link.sh')),
              ],
            ),
            const SizedBox(height: 24),

            // 2. Inputs & Selection
            Text('> 2. INPUTS_AND_CONTROLS', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              style: const TextStyle(color: Color(0FF00FF66), fontFamily: 'Courier'),
              decoration: const InputDecoration(
                labelText: 'COMMAND_PROMPT_INPUT',
                labelStyle: TextStyle(color: Color(0FF00FF66), fontFamily: 'Courier'),
                prefixIcon: Icon(Icons.chevron_right, color: Color(0FF00FF66)),
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
                        const Text('DAEMON_DAEMON_SWITCH', style: TextStyle(fontFamily: 'Courier', color: Color(0FF00FF66), fontWeight: FontWeight.bold)),
                        Switch(
                          value: _switchValue,
                          onChanged: (val) => setState(() => _switchValue = val),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0FF00FF66)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('ENABLE_VERBOSE_LOGS', style: TextStyle(fontFamily: 'Courier', color: Color(0FF00FF66), fontWeight: FontWeight.bold)),
                        Checkbox(
                          value: _checkboxValue,
                          onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0FF00FF66)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('ALLOCATED_MEM_SLIDER', style: TextStyle(fontFamily: 'Courier', color: Color(0FF00FF66), fontWeight: FontWeight.bold)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(fontFamily: 'Courier', color: Color(0FF00FF66), fontWeight: FontWeight.bold)),
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
            Text('> 3. SYSTEM_TELEMETRY', style: textTheme.headlineMedium),
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
                        const Text('BUFFER_UTILIZATION', style: TextStyle(fontFamily: 'Courier', fontWeight: FontWeight.bold, color: Color(0FF00FF66))),
                        Badge(
                          label: const Text('OK', style: TextStyle(fontFamily: 'Courier', color: Colors.black)),
                          backgroundColor: const Color(0FF00FF66),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('RAM_USAGE: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(fontFamily: 'Courier', color: Color(0FF009933))),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 4. Modals
            Text('> 4. DIALOGS_AND_OVERLAYS', style: textTheme.headlineMedium),
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
          border: Border(top: BorderSide(color: Color(0FF00FF66), width: 1.5)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FF0C100C),
          selectedItemColor: const Color(0FF00FF66),
          unselectedItemColor: const Color(0FF009933),
          selectedLabelStyle: const TextStyle(fontFamily: 'Courier', fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontFamily: 'Courier'),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.code), label: 'CLI'),
            BottomNavigationBarItem(icon: Icon(Icons.dns), label: 'NODES'),
            BottomNavigationBarItem(icon: Icon(Icons.memory), label: 'MEM'),
          ],
        ),
      ),
    );
  }
}
