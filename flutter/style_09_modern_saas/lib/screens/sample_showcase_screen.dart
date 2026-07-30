import 'package:flutter/material.dart';

/// 範例展示頁面 (Modern SaaS Showcase Screen)
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
  final TextEditingController _textController =
      TextEditingController(text: 'enterprise-workspace-2026');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('SaaS Workspace Alert'),
        content: const Text('專業且簡潔之 B2B Dashboard 對話框 (Alert Dialog)。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Confirm Action'),
          ),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Workspace Quick Actions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('極致乾淨與高效能之 Bottom Sheet 選單。'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.analytics_outlined, color: Color(0FF6366F1)),
              title: const Text('Export Analytics Report'),
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
        title: const Text('現代 SaaS MODERN DASHBOARD'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SaaS Design Components', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('Enterprise B2B Level UI System / Indigo Theme', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Search Bar
            SearchBar(
              hintText: 'Search metrics, APIs, users...',
              leading: const Icon(Icons.search, color: Color(0FF6366F1)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Color(0FFE2E8F0), width: 1.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('Metrics')),
                ButtonSegment(value: 1, label: Text('Controls')),
                ButtonSegment(value: 2, label: Text('Modals')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            // 1. Buttons
            Text('1. Button Variants', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Primary Action')),
                FilledButton(onPressed: () {}, child: const Text('Secondary Tonal')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined Button')),
                TextButton(onPressed: () {}, child: const Text('Text Link')),
              ],
            ),
            const SizedBox(height: 24),

            // 2. Inputs & Selection
            Text('2. Inputs & Controls', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Organization Subdomain',
                prefixIcon: Icon(Icons.language, color: Color(0FF6366F1)),
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
                        const Text('Two-Factor Authentication', style: TextStyle(fontWeight: FontWeight.w600)),
                        Switch(
                          value: _switchValue,
                          onChanged: (val) => setState(() => _switchValue = val),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0FFE2E8F0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Enable API Access Logs', style: TextStyle(fontWeight: FontWeight.w600)),
                        Checkbox(
                          value: _checkboxValue,
                          onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                        ),
                      ],
                    ),
                    const Divider(color: Color(0FFE2E8F0)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('API Rate Threshold', style: TextStyle(fontWeight: FontWeight.w600)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF6366F1), fontWeight: FontWeight.bold)),
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
            Text('3. Data Displays', style: textTheme.headlineMedium),
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
                        const Text('Server Cluster Status', style: TextStyle(fontWeight: FontWeight.bold)),
                        Badge(
                          label: const Text('HEALTHY'),
                          backgroundColor: const Color(0FF10B981),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('System Load: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FF64748B))),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 4. Modals
            Text('4. Overlays & Dialogs', style: textTheme.headlineMedium),
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
        selectedItemColor: const Color(0FF6366F1),
        unselectedItemColor: const Color(0FF64748B),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: 'Analytics'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}
