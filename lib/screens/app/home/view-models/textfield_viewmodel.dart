import 'package:flutter/material.dart';

class TextFieldViewModel with ChangeNotifier {
  void reloadWidget() {
    notifyListeners();
  }
}
