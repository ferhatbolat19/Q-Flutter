import 'package:flutter/material.dart';
import '../core/routes.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menü', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('Ana Sayfa'),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.home);
            },
          ),
          ListTile(
            title: Text('Profilim'),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.profile);
            },
          ),
        ],
      ),
    );
  }
}
