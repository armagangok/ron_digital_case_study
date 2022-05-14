import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/text_field.dart';
import '../../providers/controller_provider.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegisterScreenControllerProvider _controllers =
        Provider.of<RegisterScreenControllerProvider>(context);

    return GlobalTextField(
      hintText: "Password",
      controller: _controllers.passwordController,
      isObscure: true,
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegisterScreenControllerProvider _controllers =
        Provider.of<RegisterScreenControllerProvider>(context);

    return GlobalTextField(
      hintText: "Email",
      controller: _controllers.emailController,
    );
  }
}

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegisterScreenControllerProvider _controllers =
        Provider.of<RegisterScreenControllerProvider>(context);

    return GlobalTextField(
      hintText: "Username",
      controller: _controllers.usernameController,
    );
  }
}
