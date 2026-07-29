import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen)
///
/// 規範重點：元件內部嚴禁 Hardcode 顏色、圓角或字體，所有樣式均從 Theme.of(context) 提取。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.75;
  final TextEditingController _textController = TextEditingController(text: 'Apple Silicon M3 Max');

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
        title: const Text('極簡科技風 Apple Minimal'),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune_rounded),
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
            Text('即時狀態看板', style: textTheme.displayLarge),
            const SizedBox(height: 8),
            Text('透過極簡留白與圓潤包覆感呈現實時數據資訊。', style: textTheme.bodyMedium),
            const SizedBox(height: 24),

            // Card 元件範例
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
                            Icon(Icons.apple, size: 28, color: colorScheme.primary),
                            const SizedBox(width: 12),
                            Text('MacBook Pro 16"', style: textTheme.titleLarge),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: ShapeDecoration(
                            color: colorScheme.primary.withOpacity(0.1),
                            shape: StadiumBorder(),
                          ),
                          child: Text(
                            'Active',
                            style: textTheme.bodyMedium?.copyWith(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text('系統效能指標', style: textTheme.bodyMedium),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _progressValue),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CPU 負載 75%', style: textTheme.bodyLarge),
                        Text('超高效能模式', style: textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // InputTextField 元件範例
            Text('設定與控制', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: '裝置識別名稱',
                prefixIcon: Icon(Icons.laptop_mac),
              ),
            ),
            const SizedBox(height: 16),

            // ListTile 元件與 Switch 範例
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.wifi_rounded),
                    title: Text('高速無線網路 (Wi-Fi 6E)', style: textTheme.bodyLarge),
                    subtitle: Text('已連線至 Studio-5G', style: textTheme.bodyMedium),
                    trailing: Switch(
                      value: _switchValue,
                      onChanged: (val) {
                        setState(() => _switchValue = val);
                      },
                    ),
                  ),
                  const Divider(height: 1, indent: 20, endIndent: 20),
                  ListTile(
                    leading: const Icon(Icons.bluetooth_rounded),
                    title: Text('藍牙裝置連接', style: textTheme.bodyLarge),
                    subtitle: Text('AirPods Max 已連線', style: textTheme.bodyMedium),
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
                    child: const Text('同步裝置設定'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('重置預設值'),
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
