import 'package:dark_theme_riverpod/notifiers/app_theme_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appThemeStateNotifier =
    ChangeNotifierProvider((ref) => AppThemeNotifier());

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);
  // final bool _value = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _themeState = ref.watch(appThemeStateNotifier);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Switch"),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CupertinoSwitch(
              onChanged: (v) {
                if (_themeState.isDarkModeEnabled) {
                  _themeState.setLightTheme();
                } else {
                  _themeState.setDarkTheme();
                }
              },
              value: _themeState.isDarkModeEnabled,
            ),
          )
        ],
      ),
    );
  }
}
