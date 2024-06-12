import 'package:exercies2/common/widgets/top_content_home.dart';
import 'package:exercies2/provider/is_dart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          const TopContentHome(),
          Consumer(builder: (context, ref, child) {
            final bool isDark = ref.watch(isDarkProvider);
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    ref.read(isDarkProvider.notifier).switchThemeMode();
                    _showDialog(context, !isDark, ref);
                  },
                  icon: isDark
                      ? const Icon(Icons.light_mode)
                      : const Icon(Icons.dark_mode),
                  label: isDark
                      ? const Text("Switch To Light Theme")
                      : const Text("Switch To Dark Theme"),
                ),
                const SizedBox(width: 10),
                Switch(
                    value: isDark,
                    onChanged: (v) {
                      ref.read(isDarkProvider.notifier).switchThemeMode();
                      _showDialog(context, !isDark, ref);
                    }),
              ],
            );
          }),
        ]),
      ),
    );
  }

  void _showDialog(BuildContext context, bool isDark, WidgetRef ref) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: isDark
                  ? const Text("In DarkMode", textAlign: TextAlign.center)
                  : const Text("In LightMode", textAlign: TextAlign.center),
              actions: [
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: const Text("Okay")),
                ElevatedButton(onPressed: () {
                  ref.read(isDarkProvider.notifier).switchThemeMode();
                  Navigator.of(context).pop();
                }, child: const Text("Cancle")),
              ],
            ));
  }
}
