import 'package:dark_theme_riverpod/notifiers/app_theme_notifier.dart';
import 'package:dark_theme_riverpod/utils/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);
  // final bool _value = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _themeState = ref.watch(appThemeNotifier);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Switch"),
          AppText.body2(
            "text",
            color: Colors.red,
          ),
          AppText.body3("text"),
          AppText.button("text"),
          AppText.body2("text"),
          const ListTile(
            title: Text("ffff"),
            subtitle: Text("data"),
          ),
          const SizedBox(
            height: 20,
          ),
          // AppText
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
