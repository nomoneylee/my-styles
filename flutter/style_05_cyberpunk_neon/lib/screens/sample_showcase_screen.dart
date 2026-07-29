import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 復古賽博朋克 (Cyberpunk Neon)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.94;
  final TextEditingController _textController = TextEditingController(text: 'NEON_CORE_OVERDRIVE_2077');

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
        title: const Text('CYBERPUNK // NEON DARK'),
        actions: [
          IconButton(
            icon: const Icon(Icons.memory_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 標頭 Hero 區塊
            Text('SYSTEM OVERDRIVE', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('霓虹青 (CYAN) 與粉紅 (MAGENTA) 外發光科技面板與電競幾何UI。', style: textTheme.bodyMedium),
            const SizedBox(height: 20),

            // Card 元件範例：賽博霓虹發光面板
            Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.developer_board_rounded, size: 28, color: colorScheme.primary),
                            const SizedBox(width: 10),
                            Text('QUANTUM CORE v7.5', style: textTheme.titleLarge),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: colorScheme.secondary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'ONLINE',
                            style: textTheme.labelLarge?.copyWith(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text('核心超頻負載 (94%)', style: textTheme.bodyLarge?.copyWith(color: colorScheme.tertiary)),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _progressValue),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('5.2 GHz // 1.2V', style: textTheme.bodyLarge),
                        Text('NEON STABLE', style: textTheme.bodyMedium?.copyWith(color: colorScheme.primary)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // InputTextField 元件範例
            Text('量子指令鎖定', style: textTheme.headlineMedium),
            const SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'NEON COMMAND KEY',
                prefixIcon: Icon(Icons.terminal_rounded),
              ),
            ),
            const SizedBox(height: 20),

            // ListTile 元件與 Switch 範例
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.wifi_tethering_rounded),
                    title: Text('神經元矩陣連線 (NEURAL LINK)', style: textTheme.bodyLarge),
                    subtitle: Text('即時腦波資料同步傳輸中', style: textTheme.bodyMedium),
                    trailing: Switch(
                      value: _switchValue,
                      onChanged: (val) {
                        setState(() => _switchValue = val);
                      },
                    ),
                  ),
                  Divider(height: 1, color: colorScheme.outline.withOpacity(0.3)),
                  ListTile(
                    leading: const Icon(Icons.security_rounded),
                    title: Text('防火牆量子加密矩陣', style: textTheme.bodyLarge),
                    subtitle: Text('自動阻絕外部駭客入侵攻擊', style: textTheme.bodyMedium),
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
                    child: const Text('啟動超頻模組'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('備份量子矩陣'),
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
