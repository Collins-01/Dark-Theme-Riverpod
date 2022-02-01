import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppThemeNotifier extends ChangeNotifier {
  var isDarkModeEnabled = false;

  void setLightTheme() {
    isDarkModeEnabled = false;
    notifyListeners();
  }

  void setDarkTheme() {
    isDarkModeEnabled = true;
    notifyListeners();
  }
}

final appThemeNotifier = ChangeNotifierProvider((ref) => AppThemeNotifier());
