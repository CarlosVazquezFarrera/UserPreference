import 'package:flutter/material.dart';
import 'package:user_preference/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}
