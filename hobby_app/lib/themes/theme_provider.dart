// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:hobby_app/themes/dark_mode.dart';
import 'package:hobby_app/themes/light_mode.dart';



class ThemeProvider with ChangeNotifier{
  //initial
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;
}