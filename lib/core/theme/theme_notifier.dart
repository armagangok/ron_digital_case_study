import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData get darkMode => ThemeData.dark();
  ThemeData get ligthMode => ThemeData.light();

  bool isDark = false;

  void setTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
