import 'dart:ui';
import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 玻璃擬物風 (Glassmorphism)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.88;
  final TextEditingController _textController = TextEditingController(text: '0x8F92...C401_WEB3_WALLET');

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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0FF0F172A),
              Color(0FF1E1B4B),
              Color(0FF0F172A),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              AppBar(
                title: const Text('玻璃擬物風 GLASSMORPHISM'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.blur_on_rounded),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 標頭 Hero 區塊
                      Text('Web3 晶瑩資產', style: textTheme.displayLarge),
                      const SizedBox(height: 6),
                      Text('通透半透明卡片、BackdropFilter 毛玻璃與發光微邊框。', style: textTheme.bodyMedium),
                      const SizedBox(height: 24),

                      // Card 元件範例：帶有毛玻璃模糊 BackdropFilter
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
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
                                          Icon(Icons.account_balance_wallet_rounded, size: 28, color: colorScheme.primary),
                                          const SizedBox(width: 12),
                                          Text('Ethereum Node #04', style: textTheme.titleLarge),
                                        ],
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: colorScheme.secondary.withOpacity(0.2),
                                          border: Border.all(color: colorScheme.secondary, width: 1),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          'STAKING',
                                          style: textTheme.bodyMedium?.copyWith(
                                            color: colorScheme.secondary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Text('節點同步池進度 (88%)', style: textTheme.bodyMedium),
                                  const SizedBox(height: 8),
                                  LinearProgressIndicator(value: _progressValue),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('42.85 ETH', style: textTheme.displayLarge?.copyWith(fontSize: 26)),
                                      Text('+ 12.4% APY', style: textTheme.bodyLarge?.copyWith(color: colorScheme.primary)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // InputTextField 元件範例
                      Text('智能合約地址', style: textTheme.headlineMedium),
                      const SizedBox(height: 12),
                      TextField(
                        controller: _textController,
                        decoration: const InputDecoration(
                          labelText: 'CONTRACT ADDRESS',
                          prefixIcon: Icon(Icons.key_rounded),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // ListTile 元件與 Switch 範例
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                          child: Card(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.shield_outlined),
                                  title: Text('硬體錢包雙重簽署', style: textTheme.bodyLarge),
                                  subtitle: Text('Ledger Nano X 認證保護', style: textTheme.bodyMedium),
                                  trailing: Switch(
                                    value: _switchValue,
                                    onChanged: (val) {
                                      setState(() => _switchValue = val);
                                    },
                                  ),
                                ),
                                Divider(height: 1, color: colorScheme.outline),
                                ListTile(
                                  leading: const Icon(Icons.swap_horiz_rounded),
                                  title: Text('跨鏈智能橋接跨接', style: textTheme.bodyLarge),
                                  subtitle: Text('Arbitrum One 快速通關', style: textTheme.bodyMedium),
                                  trailing: const Icon(Icons.chevron_right_rounded),
                                  onTap: () {},
                                ),
                              ],
                            ),
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
                              child: const Text('發起閃電質押'),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('瀏覽鏈上數據'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
