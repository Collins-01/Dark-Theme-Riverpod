import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppThemeNotifier2 extends StateNotifier<bool> {
  AppThemeNotifier2() : super(false);

  void setLightTheme() => state = false;
  void setDarkTheme() => state = true;
}
