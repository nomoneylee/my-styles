import 'package:flutter/material.dart';

/// 範例展示頁面 (Apple Minimal Showcase Screen)
///
/// 展示所有跨平台共用 UI 元件及其各種變體樣式
class SampleShowcaseScreen extends StatefulWidget {
  const SampleShowcaseScreen({super.key});

  @override
  State<SampleShowcaseScreen> createState() => _SampleShowcaseScreenState();
}

class _SampleShowcaseScreenState extends State<SampleShowcaseScreen> {
  int _currentNavIndex = 0;
  int _segmentedViewIndex = 0;
  bool _switchValue = true;
  bool _checkboxValue = true;
  double _sliderValue = 0.75;
  final TextEditingController _outlinedTextController =
      TextEditingController(text: 'Apple Silicon M3 Max');
  final TextEditingController _filledTextController =
      TextEditingController(text: 'MacBook Pro 16 吋');

  @override
  void dispose() {
    _outlinedTextController.dispose();
    _filledTextController.dispose();
    super.dispose();
  }

  void _showSampleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('極簡系統通知'),
        content: const Text('這是一個標準的對話框 (Alert Dialog) 元件範例。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('確認'),
          ),
        ],
      ),
    );
  }

  void _showSampleBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('底部面板 (Bottom Sheet)',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            Text('從螢幕底部升起，提供相關的操作選項與補充內容。',
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.share_outlined),
              title: const Text('分享內容'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.copy_outlined),
              title: const Text('複製連結'),
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
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('極簡科技風 Apple Minimal'),
        actions: [
          Tooltip(
            message: '重整狀態',
            child: IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {},
            ),
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert_rounded),
            onSelected: (value) {},
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'settings', child: Text('系統設定')),
              const PopupMenuItem(value: 'about', child: Text('關於本機')),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 標頭與搜尋列
            Text('共用 UI 元件展示', style: textTheme.displayLarge),
            const SizedBox(height: 8),
            Text('收錄所有 iOS & Android 共通 UI 元素及其變體樣式。',
                style: textTheme.bodyMedium),
            const SizedBox(height: 16),

            // Search Bar
            SearchBar(
              hintText: '搜尋裝置或元件...',
              leading: const Icon(Icons.search_rounded),
              trailing: [
                IconButton(
                  icon: const Icon(Icons.mic_none_rounded),
                  onPressed: () {},
                )
              ],
              elevation: WidgetStateProperty.all(0),
              backgroundColor:
                  WidgetStateProperty.all(const Color(0FFE8E8ED)),
            ),
            const SizedBox(height: 20),

            // Segmented Control
            SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('概觀視圖'), icon: Icon(Icons.dashboard_rounded)),
                ButtonSegment(value: 1, label: Text('控制項'), icon: Icon(Icons.tune_rounded)),
                ButtonSegment(value: 2, label: Text('視窗與回饋'), icon: Icon(Icons.layers_rounded)),
              ],
              selected: {_segmentedViewIndex},
              onSelectionChanged: (newSelection) {
                setState(() => _segmentedViewIndex = newSelection.first);
              },
            ),
            const SizedBox(height: 24),

            // 1. 按鈕組展示 (Buttons Showcase)
            Text('1. 按鈕變體 (Buttons & Actions)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
                FilledButton(onPressed: () {}, child: const Text('Filled (Primary)')),
                FilledButton.tonal(onPressed: () {}, child: const Text('Filled Tonal')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
                TextButton(onPressed: () {}, child: const Text('Text Button')),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_rounded)),
                const SizedBox(width: 8),
                IconButton.filled(onPressed: () {}, icon: const Icon(Icons.star_rounded)),
                const SizedBox(width: 8),
                IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.share_rounded)),
              ],
            ),
            const SizedBox(height: 24),

            // 2. 輸入與選擇控制項 (Inputs & Selection)
            Text('2. 輸入與選擇 (Input & Selection)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            TextField(
              controller: _outlinedTextController,
              decoration: const InputDecoration(
                labelText: 'Outlined 文字輸入框',
                prefixIcon: Icon(Icons.laptop_mac),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _filledTextController,
              decoration: InputDecoration(
                hintText: 'Filled 無邊框輸入框',
                prefixIcon: const Icon(Icons.devices_rounded),
                fillColor: const Color(0xFFE3E3E8),
              ),
            ),
            const SizedBox(height: 16),

            // Switch & Checkbox & Slider
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Switch (開關觸發)', style: textTheme.bodyLarge),
                        Switch(
                          value: _switchValue,
                          onChanged: (val) => setState(() => _switchValue = val),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Checkbox (複選框)', style: textTheme.bodyLarge),
                        Checkbox(
                          value: _checkboxValue,
                          onChanged: (val) => setState(() => _checkboxValue = val ?? false),
                        ),
                      ],
                    ),
                    const Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Slider (滑桿調整)', style: textTheme.bodyLarge),
                            Text('${(_sliderValue * 100).toInt()}%', style: textTheme.bodyMedium),
                          ],
                        ),
                        Slider(
                          value: _sliderValue,
                          onChanged: (val) => setState(() => _sliderValue = val),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () async {
                      await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                      );
                    },
                    icon: const Icon(Icons.calendar_today_rounded, size: 18),
                    label: const Text('選擇日期'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () async {
                      await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                    },
                    icon: const Icon(Icons.access_time_rounded, size: 18),
                    label: const Text('選擇時間'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // 3. 卡片與視圖 (Cards & Views)
            Text('3. 卡片與視圖 (Cards & Views)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),

            // Elevated Card
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
                            Badge(
                              label: const Text('NEW'),
                              backgroundColor: colorScheme.primary,
                              child: const Icon(Icons.memory_rounded, size: 28),
                            ),
                            const SizedBox(width: 16),
                            Text('Elevated Card 視圖', style: textTheme.titleLarge),
                          ],
                        ),
                        const Badge(
                          smallSize: 10,
                          backgroundColor: Color(0FF34C759),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text('包含狀態與進度指示器之範例卡片。', style: textTheme.bodyMedium),
                    const SizedBox(height: 12),
                    LinearProgressIndicator(value: _sliderValue),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('進度 ${(_sliderValue * 100).toInt()}%', style: textTheme.bodyLarge),
                        const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Outlined Card
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: colorScheme.primary, width: 1.2),
              ),
              child: const ListTile(
                leading: Icon(Icons.verified_user_rounded),
                title: Text('Outlined Card (外框樣式卡片)'),
                subtitle: Text('適用於強調次要區塊資訊。'),
                trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16),
              ),
            ),
            const SizedBox(height: 24),

            // 4. 彈窗與回饋 (Modals & Overlays)
            Text('4. 彈窗與回饋 (Modals & Feedback)', style: textTheme.headlineMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: _showSampleDialog,
                    child: const Text('觸發 Alert Dialog'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: _showSampleBottomSheet,
                    child: const Text('觸發 Bottom Sheet'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentNavIndex,
        onTap: (index) => setState(() => _currentNavIndex = index),
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: const Color(0FF8E8E93),
        items: const [
          BottomNavigationBarViewItem(
            icon: Icon(Icons.home_rounded),
            label: '首頁',
          ),
          BottomNavigationBarViewItem(
            icon: Icon(Icons.widgets_rounded),
            label: '元件',
          ),
          BottomNavigationBarViewItem(
            icon: Icon(Icons.settings_rounded),
            label: '設定',
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarViewItem extends BottomNavigationBarItem {
  const BottomNavigationBarViewItem({required super.icon, required super.label});
}
