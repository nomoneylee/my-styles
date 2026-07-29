import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 新瑞士主義 (Swiss Modernism)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.82;
  final TextEditingController _textController = TextEditingController(text: 'HELVETICA_GRID_SYSTEM_1957');

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('SWISS MODERNISM // GRID'),
        actions: [
          IconButton(
            icon: const Icon(Icons.grid_view_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 標頭 Hero 區塊：包浩斯風格超大標題與編號
            Text('01 // ARCHITECTURE', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('完全零圓角、極致網格對齊與瑞士紅 (SWISS RED) 色塊呈現。', style: textTheme.bodyMedium),
            const SizedBox(height: 24),

            // Card 元件範例：色塊網格 (Color Block Grid)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              color: colorScheme.primary,
                            ),
                            const SizedBox(width: 10),
                            Text('EXHIBITION 2026', style: textTheme.titleLarge),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          color: colorScheme.outline,
                          child: Text(
                            'VOL. 42',
                            style: textTheme.labelLarge?.copyWith(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text('展覽容量負載指標 (82%)', style: textTheme.bodyLarge),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _progressValue),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ZÜRICH MUSEUM', style: textTheme.bodyLarge),
                        Text('OPEN TODAY', style: textTheme.bodyMedium?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // InputTextField 元件範例
            Text('02 // SEARCH & SEARCH', style: textTheme.headlineMedium),
            const SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'ARCHIVE INDEX CODE',
                prefixIcon: Icon(Icons.search_sharp),
              ),
            ),
            const SizedBox(height: 20),

            // ListTile 元件與 Switch 範例
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.tune_sharp),
                    title: Text('GRID ALIGNMENT GUIDE', style: textTheme.bodyLarge),
                    subtitle: Text('Show 12-column baseline grid overlay', style: textTheme.bodyMedium),
                    trailing: Switch(
                      value: _switchValue,
                      onChanged: (val) {
                        setState(() => _switchValue = val);
                      },
                    ),
                  ),
                  Container(height: 1.5, color: colorScheme.outline),
                  ListTile(
                    leading: const Icon(Icons.picture_in_picture_sharp),
                    title: Text('TYPOGRAPHY SCALER', style: textTheme.bodyLarge),
                    subtitle: Text('Helvetica Neue bold contrast preset', style: textTheme.bodyMedium),
                    trailing: const Icon(Icons.arrow_forward_sharp),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 按鈕組合範例 (PrimaryButton & SecondaryButton)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('GENERATE PDF'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('EXPORT GRID'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
