import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_app/components/my_settings_tile.dart';
import 'package:hobby_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        centerTitle: true,
        title: Text('S E T T I N G S'),
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          //dark mode
          MySettingsTile(
            title: "Dark Mode",
            action: CupertinoSwitch(
              activeTrackColor: Color.fromARGB(255, 27, 137, 201),
              inactiveTrackColor: Theme.of(context).colorScheme.primary,
              thumbColor: Theme.of(context).colorScheme.inversePrimary,
              onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
            ),
          )
        ],
      ),
    );
  }
}
