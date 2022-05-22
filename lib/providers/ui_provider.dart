import 'package:flutter/material.dart';
import 'package:user_preference/helpers/user_preferences.dart';
import 'package:user_preference/theme/custom_theme.dart';

class UiProvider extends ChangeNotifier {
  UiProvider() {
    theme = UserPreferences.isDarkMode ? CustomTheme.dark : CustomTheme.light;
  }
  late ThemeData theme;

  set chageTheme(bool isDark) {
    theme = isDark ? CustomTheme.dark : CustomTheme.light;
    notifyListeners();
  }
}
