import 'package:flutter/widgets.dart';

class HomeScreenControllerProvider {
  final TextEditingController _number1Controller =
      TextEditingController(text: "0");
  final TextEditingController _number2Controller =
      TextEditingController(text: "0");
  final TextEditingController _resultController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();

  TextEditingController get number1Controller => _number1Controller;
  TextEditingController get number2Controller => _number2Controller;
  TextEditingController get resultController => _resultController;
  TextEditingController get urlController => _urlController;

  set setNumber1Controller(String value) => _number1Controller.text = value;
  set setNumber2Controller(String value) => _number2Controller.text = value;
  set setResultController(String value) => _resultController.text = value;
  set setUrlController(String value) => _urlController.text = value;
}
