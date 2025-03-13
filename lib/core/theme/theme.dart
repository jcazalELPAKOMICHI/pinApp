import 'package:flutter/material.dart';

class AppThemes {
  static final lightMode = ThemeData(
    useMaterial3: true,
    canvasColor: Colors.white,
    fontFamily: 'Lexend',
    brightness: Brightness.light,
  );

  static final darkMode = ThemeData(
    useMaterial3: true,
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    fontFamily: 'Lexend',
  );
}
