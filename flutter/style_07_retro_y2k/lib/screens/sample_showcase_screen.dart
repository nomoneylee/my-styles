import 'package:flutter/material.dart';

/// 範例展示頁面 (Sample Showcase Screen) - 復古 Y2K (Retro Y2K / OS Classic)
///
/// 規範重點：組件完全讀取 Theme.of(context)，內部無任何寫死樣式數值。
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  bool _switchValue = true;
  double _progressValue = 0.55;
  final TextEditingController _textController = TextEditingController(text: 'C:\\WINDOWS\\SYSTEM32\\Y2K.EXE');

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
        title: const Text('💾 RETRO Y2K // OS 1999'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 視窗標題說明
            Text('Y2K_PLAYER.EXE', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('經典 90 年代 OS 視窗灰、3D Bevel 邊框與懷舊像素感。', style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Card 元件範例：經典 Windows 95 風格視窗
            Card(
              child: Column(
                children: [
                  // 視窗內部的深藍標題列
                  Container(
                    color: colorScheme.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.disc_full_sharp, size: 18, color: Colors.white),
                            const SizedBox(width: 8),
                            Text('WINAMP_SHOWCASE.WAV', style: textTheme.titleLarge),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          color: colorScheme.surface,
                          child: Text('X', style: textTheme.labelLarge?.copyWith(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('位元率解碼緩衝器 (55%)', style: textTheme.bodyLarge),
                        const SizedBox(height: 8),
                        LinearProgressIndicator(value: _progressValue),
                        const SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('TRACK 09 // 128 kbps', style: textTheme.bodyLarge),
                            Text('STEREO 44.1kHz', style: textTheme.bodyMedium),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // InputTextField 元件範例
            Text('執行指令 (RUN CMD)', style: textTheme.headlineMedium),
            const SizedBox(height: 8),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'COMMAND PATH',
                prefixIcon: Icon(Icons.folder_open_sharp),
              ),
            ),
            const SizedBox(height: 18),

            // ListTile 元件與 Switch 範例
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.computer_sharp),
                    title: Text('開啟 86MB 虛擬記憶體分頁', style: textTheme.bodyLarge),
                    subtitle: Text('啟用 3.5 吋軟碟機自動掛載機制', style: textTheme.bodyMedium),
                    trailing: Switch(
                      value: _switchValue,
                      onChanged: (val) {
                        setState(() => _switchValue = val);
                      },
                    ),
                  ),
                  Container(height: 2, color: colorScheme.outline),
                  ListTile(
                    leading: const Icon(Icons.dialpad_sharp),
                    title: Text('撥號連線網際網路 (56k Modem)', style: textTheme.bodyLarge),
                    subtitle: Text('發出連線嗶嗶聲響與波形數據交換', style: textTheme.bodyMedium),
                    trailing: const Icon(Icons.arrow_forward_sharp),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 按鈕組合範例 (PrimaryButton & SecondaryButton)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('確定 (OK)'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('取消 (CANCEL)'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
