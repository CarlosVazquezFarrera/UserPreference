import 'package:flutter/material.dart';
import 'package:user_preference/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        drawer: const CustomDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _SettingsItem(texto: 'Is DarkMode'),
            _SettingsItem(texto: 'Género'),
            _SettingsItem(texto: 'Nombre De Usuario')
          ],
        ));
  }
}

class _SettingsItem extends StatelessWidget {
  const _SettingsItem({
    Key? key,
    required this.texto,
  }) : super(key: key);
  final String texto;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [Text(texto), const Divider()],
      ),
    );
  }
}
