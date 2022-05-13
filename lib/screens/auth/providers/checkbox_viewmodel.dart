import 'package:flutter/material.dart';

class CheckBoxViewModel extends ChangeNotifier {
  bool? value = false;

  void changeCheckBox(bool? e) {
    value = e;
    notifyListeners();
  }
}


