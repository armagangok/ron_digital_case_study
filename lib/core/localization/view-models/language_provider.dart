import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  bool _isTurkish = false;

  get isTurkish => _isTurkish;

  void changeLanguage() {
    _isTurkish = !_isTurkish;
    notifyListeners();
  }
}
