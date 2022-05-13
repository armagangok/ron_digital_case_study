import 'package:flutter/material.dart';

class PageIndicatorViewModel extends ChangeNotifier {
  int activeIndex = 0;

  void changeIndex(int index) {
    activeIndex = index;
    notifyListeners();
  }
}
