import 'package:flutter/cupertino.dart';
import 'package:user_preference/routes/routes.dart';
import 'package:user_preference/screens/screens.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      Routes.home: (_) => const HomeScreen(),
      Routes.profile: (_) => const ProfileScreen(),
      Routes.settings: (_) => const SettingsScreen(),
    };
  }
}
