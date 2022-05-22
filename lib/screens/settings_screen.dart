import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preference/providers/providers.dart';

import 'package:user_preference/widgets/widgets.dart';

import 'package:user_preference/helpers/user_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SwitchListTile.adaptive(
                  title: const Text('DarkMode'),
                  value: UserPreferences.isDarkMode,
                  onChanged: (value) => setState(() {
                        UserPreferences.isDarkMode = value;
                        final uiProvider =
                            Provider.of<UiProvider>(context, listen: false);
                        uiProvider.chageTheme = value;
                      })),
              const Divider(),
              RadioListTile<int>(
                  title: const Text('Masculino'),
                  value: 1,
                  groupValue: UserPreferences.gender,
                  onChanged: (value) =>
                      setState(() => UserPreferences.gender = value)),
              RadioListTile<int>(
                  title: const Text('Femenino'),
                  value: 2,
                  groupValue: UserPreferences.gender,
                  onChanged: (value) =>
                      setState(() => UserPreferences.gender = value!)),
              const Divider(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                      initialValue: UserPreferences.name,
                      decoration: const InputDecoration(labelText: 'Nombre'),
                      onChanged: (value) =>
                          setState(() => UserPreferences.name = value)))
            ],
          ),
        ));
  }
}
