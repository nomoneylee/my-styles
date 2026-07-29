import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 柔和莫蘭迪 (Soft Organic)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.60;
  final TextEditingController _textController = TextEditingController(text: '森林早晨呼吸冥想日記');

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
        title: const Text('柔和莫蘭迪 SOFT ORGANIC'),
        actions: [
          IconButton(
            icon: const Icon(Icons.spa_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 標頭 Hero 區塊
            Text('每日心靈植栽', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('超大有機橢圓角、莫蘭迪鼠尾草綠與質樸人文溫潤感。', style: textTheme.bodyMedium),
            const SizedBox(height: 24),

            // Card 元件範例
            Card(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.eco_rounded, size: 28, color: colorScheme.primary),
                            const SizedBox(width: 12),
                            Text('龜背竹水分紀錄', style: textTheme.titleLarge),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: ShapeDecoration(
                            color: colorScheme.secondary.withOpacity(0.15),
                            shape: const StadiumBorder(),
                          ),
                          child: Text(
                            'HEALTHY',
                            style: textTheme.bodyMedium?.copyWith(
                              color: colorScheme.secondary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text('土壤濕度目標 (60%)', style: textTheme.bodyMedium),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _progressValue),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('下次澆水：明日 09:00', style: textTheme.bodyLarge),
                        Text('濕度適宜', style: textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // InputTextField 元件範例
            Text('日記隨手記', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'PODCAST TITLE',
                prefixIcon: Icon(Icons.edit_note_rounded),
              ),
            ),
            const SizedBox(height: 20),

            // ListTile 元件與 Switch 範例
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.nightlight_round),
                    title: Text('助眠白噪音播放', style: textTheme.bodyLarge),
                    subtitle: Text('夜間自動播放 30 分鐘森林雨聲', style: textTheme.bodyMedium),
                    trailing: Switch(
                      value: _switchValue,
                      onChanged: (val) {
                        setState(() => _switchValue = val);
                      },
                    ),
                  ),
                  const Divider(height: 1, indent: 20, endIndent: 20),
                  ListTile(
                    leading: const Icon(Icons.self_improvement_rounded),
                    title: Text('引導式呼吸訓練', style: textTheme.bodyLarge),
                    subtitle: Text('4-7-8 舒壓放鬆練習課程', style: textTheme.bodyMedium),
                    trailing: const Icon(Icons.chevron_right_rounded),
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
                    child: const Text('開始冥想時刻'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('查看修復日誌'),
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
