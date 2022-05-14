import 'package:flutter/material.dart';

class QrViewModel with ChangeNotifier {
  String _qrUrl = "";

  String get getUrl => _qrUrl;

  set setUrl(String newQRUrl) {
    _qrUrl = newQRUrl;
    notifyListeners();
  }
}
