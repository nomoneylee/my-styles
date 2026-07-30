import 'package:flutter/material.dart';

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
  double _sliderValue = 0.90;
  final TextEditingController _textController = TextEditingController(text: 'ROYAL_BLACK_GOLD_VIP_999');

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0FF141419),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0FFD4AF37), width: 1.0),
        ),
        title: const Text('👑 VIP 尊爵專屬邀請', style: TextStyle(color: Color(0FFD4AF37), fontWeight: FontWeight.w700)),
        content: const Text('極致曜石黑與皇家璀璨金金絲邊框之黑金尊爵對話視窗。', style: TextStyle(color: Color(0FFF5F2EB))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('稍後')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('進入私人會所')),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0FF141419),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        side: BorderSide(color: Color(0FF3A321E), width: 1.0),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🍸 黑金私人禮賓選單', style: TextStyle(color: Color(0FFD4AF37), fontSize: 18, fontWeight: FontWeight.w700)),
            const SizedBox(height: 12),
            const Text('預約頂級私人私人銀行理財與豪華禮賓接送服務。', style: TextStyle(color: Color(0FFA69B80))),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.star, color: Color(0FFD4AF37)),
              title: const Text('BLACK CARD VIP PRIVILEGES', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
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
        title: const Text('LUXURY // BLACK & GOLD'),
        actions: [
          IconButton(icon: const Icon(Icons.diamond_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Luxury Black & Gold', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('曜石墨黑與皇家璀璨金絲邊框之極致尊爵樣板', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            SearchBar(
              hintText: '搜尋尊爵禮品、精品資產或 VIP 服務...',
              leading: const Icon(Icons.search, color: Color(0FFD4AF37)),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(const Color(0FF141419)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: const BorderSide(color: Color(0FF3A321E))),
              ),
            ),
            const SizedBox(height: 20),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('VIP 禮賓')),
                ButtonSegment(value: 1, label: Text('黑金資產')),
                ButtonSegment(value: 2, label: Text('專屬禮遇')),
              ],
              selected: {_segmentedIndex},
              onSelectionChanged: (val) => setState(() => _segmentedIndex = val.first),
            ),
            const SizedBox(height: 24),

            Text('1. 金絲按鈕變體 (Luxury Buttons)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Royal Gold')),
                FilledButton(onPressed: () {}, child: const Text('Champagne Accent')),
                OutlinedButton(onPressed: () {}, child: const Text('Gold Wire Outline')),
                TextButton(onPressed: () {}, child: const Text('Gold Link')),
              ],
            ),
            const SizedBox(height: 24),

            Text('2. 私人資產輸入 (Inputs & Controls)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'BLACK_CARD_ID',
                prefixIcon: Icon(Icons.credit_card, color: Color(0FFD4AF37)),
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
                        const Text('開啟 24/7 私人黑卡管家服務', style: TextStyle(fontWeight: FontWeight.w600)),
                        Switch(value: _switchValue, onChanged: (val) => setState(() => _switchValue = val)),
                      ],
                    ),
                    const Divider(color: Color(0FF3A321E), height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('訂閱海外豪華會所與酒莊通行權', style: TextStyle(fontWeight: FontWeight.w600)),
                        Checkbox(value: _checkboxValue, onChanged: (val) => setState(() => _checkboxValue = val ?? false)),
                      ],
                    ),
                    const Divider(color: Color(0FF3A321E), height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('尊爵信用額度上限 (Limit)', style: TextStyle(fontWeight: FontWeight.w600)),
                            Text('${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFD4AF37), fontWeight: FontWeight.w700)),
                          ],
                        ),
                        Slider(value: _sliderValue, onChanged: (val) => setState(() => _sliderValue = val)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text('3. 黑金卡片視圖 (Luxury Cards)', style: textTheme.headlineMedium),
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
                        const Text('BLACK CARD VIP EDITION', style: TextStyle(color: Color(0FFD4AF37), fontWeight: FontWeight.w700)),
                        Badge(label: const Text('BLACK GOLD'), backgroundColor: const Color(0FFD4AF37)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('專屬會籍進度: ${(_sliderValue * 100).toInt()}%', style: const TextStyle(color: Color(0FFA69B80))),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _sliderValue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text('4. 視窗與面板 (Overlays)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: _showSampleDialog, child: const Text('VIP Dialog'))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton(onPressed: _showSampleBottomSheet, child: const Text('Gold Sheet'))),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0FF3A321E)))),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (idx) => setState(() => _currentNavIndex = idx),
          backgroundColor: const Color(0FF0B0B0E),
          selectedItemColor: const Color(0FFD4AF37),
          unselectedItemColor: const Color(0FFA69B80),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.workspace_premium), label: '黑金會籍'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: '奢華資產'),
            BottomNavigationBarItem(icon: Icon(Icons.room_service_outlined), label: '私人禮賓'),
          ],
        ),
      ),
    );
  }
}
