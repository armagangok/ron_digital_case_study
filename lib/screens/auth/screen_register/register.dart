import 'package:flutter/material.dart';
import 'package:ron_digital/core/components/sized_box.dart';

import './components/buttons.dart';
import './components/text_fields.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              UsernameTextField(),
              SizedBox002V(),
              EmailTextField(),
              SizedBox002V(),
              PasswordTextField(),
              SizedBox002V(),
              RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
