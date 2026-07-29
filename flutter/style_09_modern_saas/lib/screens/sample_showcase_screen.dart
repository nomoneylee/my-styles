import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 扁平化微漸層 (Modern SaaS)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.78;
  final TextEditingController _textController = TextEditingController(text: 'team-workspace-pro.saas.io');

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
        title: const Text('現代 SaaS MODERN FLAT'),
        actions: [
          IconButton(
            icon: const Icon(Icons.space_dashboard_rounded),
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
            Text('團隊營收分析', style: textTheme.displayLarge),
            const SizedBox(height: 6),
            Text('高明度雙色漸層、彩色半透明陰影與清爽現代企業感 UI。', style: textTheme.bodyMedium),
            const SizedBox(height: 24),

            // SaaS Card 元件範例 (包覆漸層色彩與彩色陰影)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.primary.withOpacity(0.2),
                    blurRadius: 16,
                    offset: const Offset(0, 8),
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
                              Icon(Icons.insights_rounded, size: 28, color: colorScheme.primary),
                              const SizedBox(width: 12),
                              Text('ARR 年度經常性收入', style: textTheme.titleLarge),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: colorScheme.primary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '+ 24.5%',
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text('季度目標達成率 (78%)', style: textTheme.bodyMedium),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(value: _progressValue),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$ 1,280,000 USD', style: textTheme.displayLarge?.copyWith(fontSize: 24)),
                          Text('超越同業預期', style: textTheme.bodyMedium),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // InputTextField 元件範例
            Text('企業網域名稱', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'CUSTOM DOMAIN URL',
                prefixIcon: Icon(Icons.language_rounded),
              ),
            ),
            const SizedBox(height: 20),

            // ListTile 元件與 Switch 範例
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.slack_rounded),
                    title: Text('Slack & Asana 自動化通知', style: textTheme.bodyLarge),
                    subtitle: Text('專案變更時自動同步至 #general 頻道', style: textTheme.bodyMedium),
                    trailing: Switch(
                      value: _switchValue,
                      onChanged: (val) {
                        setState(() => _switchValue = val);
                      },
                    ),
                  ),
                  const Divider(height: 1, indent: 20, endIndent: 20),
                  ListTile(
                    leading: const Icon(Icons.badge_rounded),
                    title: Text('SSO 單一身分驗證存取', style: textTheme.bodyLarge),
                    subtitle: Text('Okta / Google Workspace 整合權限', style: textTheme.bodyMedium),
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
                    child: const Text('升級 Pro 企業版'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('匯出財務 CSV'),
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
