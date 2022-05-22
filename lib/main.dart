import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:user_preference/providers/provider_generator.dart';

import 'package:user_preference/helpers/user_preferences.dart';
import 'package:user_preference/providers/providers.dart';

import 'package:user_preference/routes/app_router.dart';
import 'package:user_preference/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderGenerator.providers,
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Preference',
      theme: uiProvider.theme,
      initialRoute: Routes.home,
      routes: AppRouter.routes,
    );
  }
}
