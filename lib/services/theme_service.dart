import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppThemeService extends StateNotifier<bool> {
  AppThemeService() : super(false);

  void setLightTheme() => state = false;
  void setDarkTheme() => state = true;
}
