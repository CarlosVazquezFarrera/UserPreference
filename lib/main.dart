import 'package:flutter/material.dart';
import 'package:user_preference/helpers/user_preferences.dart';
import 'package:user_preference/routes/app_router.dart';
import 'package:user_preference/routes/routes.dart';
import 'package:user_preference/theme/custom_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Preference',
      theme: CustomTheme.customTheme,
      initialRoute: Routes.home,
      routes: AppRouter.routes,
    );
  }
}
