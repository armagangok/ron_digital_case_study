import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/text_field.dart';
import '../view-models/controller_provider.dart';

class ResultTextField extends StatelessWidget {
  const ResultTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);
    return GlobalTextField(
      controller: _controllers.resultController,
      hintText: 'Result',
    );
  }
}

class Number2TextField extends StatelessWidget {
  const Number2TextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);
    return GlobalTextField(
      controller: _controllers.number2Controller,
      hintText: 'Number 2',
    );
  }
}

class Number1TextField extends StatelessWidget {
  const Number1TextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);
    return GlobalTextField(
      controller: _controllers.number1Controller,
      hintText: 'Number 1',
    );
  }
}

class UrlTextField extends StatelessWidget {
  const UrlTextField({
    Key? key,
  }) : super(key: key);

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
