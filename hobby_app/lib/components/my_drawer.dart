import 'package:flutter/material.dart';
import 'package:hobby_app/components/background.dart';
import 'package:hobby_app/components/my_drawer_tile.dart';
import 'package:hobby_app/pages/settings_page.dart';
import 'package:hobby_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final _auth = AuthService();

  void logout() {
    _auth.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Background(),
          SafeArea(
            child: Column(
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Image(
                    image: AssetImage('assets/logo/pixelcut.png'),
                    height: 180,
                    width: 180,
                  ),
                ),
                //home
                MyDrawerTile(
                  icon: Icons.home,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: "H O M E",
                ),
                //settings
                MyDrawerTile(
                  icon: Icons.settings,
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                  },
                  title: "S E T T I N G S",
                ),

                const Spacer(),

                //logout button
                MyDrawerTile(
                  icon: Icons.logout,
                  onTap: logout,
                  title: "L O G O U T",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
