import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/text_field.dart';
import '../view-models/controller_provider.dart';
import '../view-models/textfield_viewmodel.dart';

class Number2TextField extends StatelessWidget {
  const Number2TextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);

    final TextFieldViewModel _textfeldViewModel =
        Provider.of<TextFieldViewModel>(context);
    return GlobalTextField(
        controller: _controllers.number2Controller,
        hintText: 'Number 2',
        onChanged: (value) {
          _controllers.setNumber2Controller = value;
          _textfeldViewModel.reloadWidget();
        });
  }
}

class Number1TextField extends StatelessWidget {
  const Number1TextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);

    final TextFieldViewModel _textfeldViewModel =
        Provider.of<TextFieldViewModel>(context);
    return GlobalTextField(
        controller: _controllers.number1Controller,
        hintText: 'Number 1',
        onChanged: (value) {
          _controllers.setNumber1Controller = value;
          _textfeldViewModel.reloadWidget();
        });
  }
}

class ResultTextField extends StatelessWidget {
  const ResultTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);

    final TextFieldViewModel _textfeldViewModel =
        Provider.of<TextFieldViewModel>(context);

    double _result = 0;
    double _number1;
    double _number2;

    if (_controllers.number1Controller.text == "" ||
        _controllers.number2Controller.text == "") {
      
      _number1 = 0;
      _number2 = 0;
    } else {
      _number1 = double.parse(_controllers.number1Controller.text);
      _number2 = double.parse(_controllers.number2Controller.text);
      _result = _number1 + _number2;
    }

    _controllers.resultController.text = _result.toString();
    return GlobalTextField(
      controller: _controllers.resultController,
      hintText: 'Result',
    );
  }
}

class UrlTextField extends StatelessWidget {
  const UrlTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);
    return GlobalTextField(
      controller: _controllers.urlController,
      hintText: "Url",
    );
  }
}
