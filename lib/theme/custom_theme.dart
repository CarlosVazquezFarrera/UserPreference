import 'package:flutter/material.dart';

class CustomTheme {
  static const AppBarTheme customBar = AppBarTheme(centerTitle: true);

  static ThemeData get dark {
    return _generateTheme(ThemeData.dark());
  }

  static ThemeData get light {
    return _generateTheme(ThemeData.light());
  }

  static ThemeData _generateTheme(ThemeData theme) {
    return theme.copyWith(appBarTheme: customBar);
  }
}
