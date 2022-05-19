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
      body: const Center(
        child: Text('ProfileScreen'),
      ),
    );
  }
}
