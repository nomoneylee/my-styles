import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 新粗獷主義 (Neo-Brutalism)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.65;
  final TextEditingController _textController = TextEditingController(text: 'LIMITLESS_STREETWEAR_2026');

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
        title: const Text('新粗獷主義 NEO-BRUTALISM'),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_on_rounded),
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
            Text('LIMITED DROP 01', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('叛逆高撞色、純黑粗邊框與硬塊位移陰影視覺呈現。', style: textTheme.bodyMedium),
            const SizedBox(height: 20),

            // Card 元件範例 (外加硬塊陰影包覆裝飾)
            Container(
              decoration: BoxDecoration(
                color: colorScheme.outline,
                borderRadius: BorderRadius.circular(4.0),
              ),
              padding: const EdgeInsets.only(left: 4, top: 4),
              child: Card(
                color: colorScheme.primary,
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
                              Icon(Icons.shopping_bag_outlined, size: 28, color: colorScheme.onSurface),
                              const SizedBox(width: 10),
                              Text('CYBER_HOODIE #09', style: textTheme.titleLarge),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: colorScheme.secondary,
                              border: Border.all(color: colorScheme.outline, width: 2),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'HOT',
                              style: textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text('庫存剩餘數量 (65%)', style: textTheme.bodyLarge),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(value: _progressValue),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('NT$ 3,800', style: textTheme.displayLarge?.copyWith(fontSize: 24)),
                          Text('搶購即將截止', style: textTheme.bodyMedium),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),

            // InputTextField 元件範例
            Text('折扣優惠碼輸入', style: textTheme.headlineMedium),
            const SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'VIP PROMO CODE',
                prefixIcon: Icon(Icons.confirmation_num_outlined),
              ),
            ),
            const SizedBox(height: 20),

            // ListTile 元件與 Switch 範例
            Card(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.notifications_active_outlined),
                    title: Text('開啟簡訊開賣通知', style: textTheme.bodyLarge),
                    subtitle: Text('發售前 10 分鐘自動傳送簡訊', style: textTheme.bodyMedium),
                    trailing: Switch(
                      value: _switchValue,
                      onChanged: (val) {
                        setState(() => _switchValue = val);
                      },
                    ),
                  ),
                  Divider(height: 2, color: colorScheme.outline, thickness: 2.5),
                  ListTile(
                    leading: const Icon(Icons.local_shipping_outlined),
                    title: Text('全台極速宅配通', style: textTheme.bodyLarge),
                    subtitle: Text('當天 24H 快速送達指定地址', style: textTheme.bodyMedium),
                    trailing: const Icon(Icons.arrow_forward_rounded),
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
                    child: const Text('立即加入購物車'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('加入收藏庫'),
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
