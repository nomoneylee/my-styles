import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 高密度儀表板 (Terminal Dashboard)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.96;
  final TextEditingController _textController = TextEditingController(text: 'grep -rn "LATENCY_CRITICAL" /var/log/sys.log');

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
        title: const Text('root@terminal:~# sysstat'),
        actions: [
          IconButton(
            icon: const Icon(Icons.terminal_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 標頭 Hero 區塊
            Text('> HIGH_FREQ_TRADING_DASHBOARD', style: textTheme.displayLarge),
            const SizedBox(height: 2),
            Text('純黑底 (#000000)、螢光綠 (#00FF66)、等寬 Monospace 字體與高密度數據。', style: textTheme.bodyMedium),
            const SizedBox(height: 14),

            // High-Density Card 元件範例
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.dns_sharp, size: 20, color: Color(0FF00FF66)),
                            const SizedBox(width: 8),
                            Text('CLUSTER_NODE_01 [SYS_OK]', style: textTheme.titleLarge),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          color: colorScheme.secondary,
                          child: Text(
                            'WARN: HIGH_LOAD',
                            style: textTheme.labelLarge?.copyWith(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text('[RAM_ALLOCATION] 15.3GB / 16.0GB (96%)', style: textTheme.bodyLarge),
                    const SizedBox(height: 6),
                    LinearProgressIndicator(value: _progressValue),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LATENCY: 0.12ms', style: textTheme.bodyLarge),
                        Text('THROUGHPUT: 42.8k req/s', style: textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14),

            // InputTextField 元件範例
            Text('> SEARCH_LOGS_REGEX', style: textTheme.headlineMedium),
            const SizedBox(height: 6),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'CLI QUERY INPUT',
                prefixIcon: Icon(Icons.code_sharp),
              ),
            ),
            const SizedBox(height: 14),

            // ListTile 元件與 Switch 範例
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.flash_on_sharp),
                    title: Text('HIGH_FREQUENCY_ORDER_ROUTER', style: textTheme.bodyLarge),
                    subtitle: Text('Enable sub-millisecond FPGA DMA channel', style: textTheme.bodyMedium),
                    trailing: Switch(
                      value: _switchValue,
                      onChanged: (val) {
                        setState(() => _switchValue = val);
                      },
                    ),
                  ),
                  Container(height: 1, color: colorScheme.outline),
                  ListTile(
                    leading: const Icon(Icons.bug_report_sharp),
                    title: Text('KERNEL_TRACING_SYSTEM_CALLS', style: textTheme.bodyLarge),
                    subtitle: Text('eBPF probe listening on eth0 socket', style: textTheme.bodyMedium),
                    trailing: const Icon(Icons.arrow_forward_sharp),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),

            // 按鈕組合範例 (PrimaryButton & SecondaryButton)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('[EXEC_COMMAND]'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('[CLEAR_LOGS]'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
