import 'package:flutter/material.dart';

import './components/components.dart';
import '../../../core/extension/context_extension.dart';
import '../components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height2 = context.getHeight(0.02);
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: context.getHeight(1) - 76,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const EmailTextField(),
                  SizedBox(height: height2),
                  const PasswordTextField(),
                  const RememberMeAndCheckBox(),
                  const LoginButton(),
                  SizedBox(height: height2),
                  const GoToRegisterPageButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
