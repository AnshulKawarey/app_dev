// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:hobby_app/themes/dark_mode.dart';
import 'package:hobby_app/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  //initial as light
  ThemeData _themeData = lightMode;

  //get current mode
  ThemeData get themeData => _themeData;

  //check for darkmode
  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;

    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
