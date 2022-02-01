import 'package:dark_theme_riverpod/notifiers/app_theme_notifier.dart';
import 'package:dark_theme_riverpod/utils/app_theme_data.dart';
import 'package:dark_theme_riverpod/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookWidget {
  MyApp({Key? key}) : super(key: key);
  // appThemeNotifier
  

  @override
  Widget build(BuildContext context) {
    // final appThemeState
    return MaterialApp(
      title: 'Dark Theme Riverpod',
      theme: AppThemeData.lightThemeData,
      home: const HomeView(),
    );
  }
}
