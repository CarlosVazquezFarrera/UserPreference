import 'package:flutter/material.dart';
import 'package:user_preference/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Carlos';

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
                  value: isDarkMode,
                  onChanged: (value) => setState(() => isDarkMode = value)),
              const Divider(),
              RadioListTile<int>(
                  title: const Text('Masculino'),
                  value: 1,
                  groupValue: gender,
                  onChanged: (value) => setState(() => gender = value!)),
              RadioListTile<int>(
                  title: const Text('Femenino'),
                  value: 2,
                  groupValue: gender,
                  onChanged: (value) => setState(() => gender = value!)),
              const Divider(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                      initialValue: 'Carlos',
                      decoration: const InputDecoration(labelText: 'Nombre'),
                      onChanged: (value) => setState(() => name = value)))
            ],
          ),
        ));
  }
}
