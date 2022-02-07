import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// final appThemeStateNotifier =
//     ChangeNotifierProvider((ref) => AppThemeNotifier());

class AppThemeNotifier extends ChangeNotifier {
  AppThemeNotifier() {
    getCache();
  }
  //[using the change notifier method]
  bool isDarkModeEnabled = false;

  void setLightTheme() {
    isDarkModeEnabled = false;
    notifyListeners();
    cache(isDarkModeEnabled);
    debugPrint("IS DarkMode : $isDarkModeEnabled");
  }

  void setDarkTheme() {
    isDarkModeEnabled = true;
    notifyListeners();
    cache(isDarkModeEnabled);
    debugPrint("IS DarkMode : $isDarkModeEnabled");
  }

  cache(bool value) async {
    String key = 'theme';
    SharedPreferences _db = await SharedPreferences.getInstance();
    await _db.setBool(key, value);
  }

  getCache() async {
    String key = 'theme';
    SharedPreferences _db = await SharedPreferences.getInstance();
    bool contains = _db.containsKey(key);
    if (contains) {
      isDarkModeEnabled = _db.getBool(key)!;
      notifyListeners();
    } else {
      isDarkModeEnabled = false;
      notifyListeners();
    }
  }
}

final appThemeNotifier = ChangeNotifierProvider((ref) => AppThemeNotifier());
