import 'package:flutter/widgets.dart';

class HomeScreenControllerProvider {
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();
  TextEditingController _resultController = TextEditingController();
  TextEditingController _urlController = TextEditingController();

  TextEditingController get number1Controller => _number1Controller;
  TextEditingController get number2Controller => _number2Controller;
  TextEditingController get resultController => _resultController;
  TextEditingController get urlController => _urlController;

  set setNumber1Controller(TextEditingController controller) =>
      _number1Controller = controller;
  set setNumber2Controller(TextEditingController controller) =>
      _number2Controller = controller;
  set setResultController(TextEditingController controller) =>
      _resultController = controller;
  set setUrlController(TextEditingController controller) =>
      _urlController = controller;
}
