import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/text_field.dart';
import '../providers/controller_provider.dart';
import '../screen_register/register.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SigninPageControllerProvider _controllers =
        Provider.of<SigninPageControllerProvider>(context);

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
    SigninPageControllerProvider _controllers =
        Provider.of<SigninPageControllerProvider>(context);

    return GlobalTextField(
      hintText: "Email",
      controller: _controllers.getEmail,
    );
  }
}

class GoToRegisterPageButton extends StatelessWidget {
  const GoToRegisterPageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RegisterScreen(),
          ),
        );
      },
      child: const Text("Don't have an account?"),
    );
  }
}
