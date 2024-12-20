import 'package:flutter/material.dart';
import 'package:hobby_app/pages/home_page.dart';
import 'package:hobby_app/pages/intro_page.dart';
import 'package:hobby_app/pages/login_page.dart';
import 'package:hobby_app/pages/settings_page.dart';
import 'package:hobby_app/pages/signup_page.dart';
import 'package:hobby_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      // theme: darkMode,
      routes: {
        '/homepage': (context) => HomePage(),
        '/intropage': (context) => IntroPage(),
        '/loginpage': (context) => LoginPage(),
        '/signuppage': (context) => SignupPage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}
