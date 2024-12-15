import 'package:flutter/material.dart';
import 'package:hobby_app/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.surface,
            Theme.of(context).colorScheme.secondary,
          ],
        )),
        child: SafeArea(
          child: Column(
            children: [
              //logo
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Image(
                    image: AssetImage('assets/logo/pixelcut.png'),
                    height: 180,
                    width: 180,
                  )),
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

                  Navigator.pushNamed(context, '/settingspage');
                },
                title: "S E T T I N G S",
              ),
              MyDrawerTile(
                icon: Icons.login,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/loginpage');
                },
                title: "L O G I N",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
