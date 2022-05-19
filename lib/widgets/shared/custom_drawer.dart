import 'package:flutter/material.dart';
import 'package:user_preference/routes/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: const [
          _Header(),
          _ItemDrawer(
            icon: Icons.person,
            tittle: 'Profile',
            routeName: Routes.profile,
          ),
          _ItemDrawer(
            icon: Icons.settings,
            tittle: 'Settings',
            routeName: Routes.settings,
          ),
        ],
      ),
    );
  }
}

class _ItemDrawer extends StatelessWidget {
  const _ItemDrawer({
    Key? key,
    required this.icon,
    required this.tittle,
    required this.routeName,
  }) : super(key: key);

  final IconData icon;
  final String tittle;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(tittle),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, routeName);
      },
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(0.0),
      child: Image(
        image: AssetImage('assets/menu.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }
}
