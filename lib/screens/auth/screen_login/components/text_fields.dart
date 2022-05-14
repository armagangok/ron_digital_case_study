import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/text_field.dart';
import '../../providers/controller_provider.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginScreenControllerProvider _controllers =
        Provider.of<LoginScreenControllerProvider>(context);

    return GlobalTextField(
      hintText: "Password",
      controller: _controllers.getPassword,
      isObscure: true,
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginScreenControllerProvider _controllers =
        Provider.of<LoginScreenControllerProvider>(context);

    return GlobalTextField(
      hintText: "Email",
      controller: _controllers.getEmail,
    );
  }
}
