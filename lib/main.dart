//@dart=2.9
import 'package:dark_theme_riverpod/notifiers/app_theme_notifier.dart';
import 'package:dark_theme_riverpod/services/theme_service.dart';
import 'package:dark_theme_riverpod/utils/app_theme_data.dart';
import 'package:dark_theme_riverpod/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

final appThemeStateNotifier =
    ChangeNotifierProvider((ref) => AppThemeNotifier());

// ignore: use_key_in_widget_constructors
class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: avoid_print
    print(ref.watch(appThemeStateNotifier).isDarkModeEnabled);
    // final appThemeState
    return MaterialApp(
      title: 'Dark Theme Riverpod',
      theme: ref.watch(appThemeStateNotifier).isDarkModeEnabled
          ? AppThemeData.darkThemeData
          : AppThemeData.lightThemeData,
      home: const HomeView(),
      // themeMode: !ref.watch(appThemeStateNotifier).isDarkModeEnabled
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
    );
  }
}
