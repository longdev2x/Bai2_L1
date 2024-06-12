import 'package:exercies2/common/theme_datas.dart';
import 'package:exercies2/home_screen.dart';
import 'package:exercies2/provider/is_dart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.addObserver(IsDarkNotifier());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDark = ref.watch(isDarkProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeDatas.lightTheme,
      darkTheme: ThemeDatas.darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
