import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 新擬物風 (Neumorphism / Soft UI)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.70;
  final TextEditingController _textController = TextEditingController(text: 'SMART_HOME_HUB_PRO');

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
        title: const Text('新擬物風 NEUMORPHISM'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_input_component_rounded),
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
            Text('觸覺擬物面板', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('同色系一體化背景 (#E0E5EC)、右上亮影與左下暗影呈現浮雕觸感。', style: textTheme.bodyMedium),
            const SizedBox(height: 24),

            // Neumorphic Card 元件範例 (包覆雙重陰影容器)
            Container(
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-6, -6),
                    blurRadius: 12,
                  ),
                  BoxShadow(
                    color: Color(0FFA3B1C6),
                    offset: Offset(6, 6),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Card(
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
                              Icon(Icons.speaker_rounded, size: 28, color: colorScheme.primary),
                              const SizedBox(width: 12),
                              Text('智慧音響揚聲器', style: textTheme.titleLarge),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: colorScheme.surface,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(color: Colors.white, offset: Offset(-2, -2), blurRadius: 4),
                                BoxShadow(color: Color(0FFA3B1C6), offset: Offset(2, 2), blurRadius: 4),
                              ],
                            ),
                            child: Text(
                              'PLAYING',
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text('主音量控制指標 (70%)', style: textTheme.bodyMedium),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(value: _progressValue),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('客廳音響 - Hi-Fi 模式', style: textTheme.bodyLarge),
                          Text('70 dB', style: textTheme.bodyMedium),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // InputTextField 元件範例
            Text('中樞裝置命名', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: const [
                  BoxShadow(color: Color(0FFA3B1C6), offset: Offset(-3, -3), blurRadius: 6),
                  BoxShadow(color: Colors.white, offset: Offset(3, 3), blurRadius: 6),
                ],
              ),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  labelText: 'DEVICE IDENTIFIER',
                  prefixIcon: Icon(Icons.router_rounded),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // ListTile 元件與 Switch 範例
            Container(
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(color: Colors.white, offset: Offset(-5, -5), blurRadius: 10),
                  BoxShadow(color: Color(0FFA3B1C6), offset: Offset(5, 5), blurRadius: 10),
                ],
              ),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.wb_sunny_rounded),
                      title: Text('自動環境燈光排程', style: textTheme.bodyLarge),
                      subtitle: Text('日落後自動開啟擬物暖黃照明', style: textTheme.bodyMedium),
                      trailing: Switch(
                        value: _switchValue,
                        onChanged: (val) {
                          setState(() => _switchValue = val);
                        },
                      ),
                    ),
                    const Divider(height: 1, indent: 20, endIndent: 20),
                    ListTile(
                      leading: const Icon(Icons.thermostat_rounded),
                      title: Text('溫濕度感測器調節', style: textTheme.bodyLarge),
                      subtitle: Text('目前室溫：24°C / 濕度 55%', style: textTheme.bodyMedium),
                      trailing: const Icon(Icons.chevron_right_rounded),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 按鈕組合範例 (PrimaryButton & SecondaryButton)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('儲存浮雕參數'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('復原預設硬體'),
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
