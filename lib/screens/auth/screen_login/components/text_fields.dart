import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/text_field.dart';
import '../../../../core/local/database/boxes/boxes.dart';
import '../../../../core/local/database/models/user_model.dart';
import '../../providers/controller_provider.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginScreenControllerProvider _controllers =
        Provider.of<LoginScreenControllerProvider>(context);

    return ValueListenableBuilder<Box<UserModel>>(
      valueListenable: Boxes.getUsers().listenable(),
      builder: (context, box, _) {
        final data = box.values.toList();
        _controllers.setPassword = data[0].password;

        return GlobalTextField(
          hintText: "Password",
          controller: _controllers.getPassword,
          isObscure: true,
        );
      },
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginScreenControllerProvider _controllers =
        Provider.of<LoginScreenControllerProvider>(context);

    return ValueListenableBuilder<Box<UserModel>>(
      valueListenable: Boxes.getUsers().listenable(),
      builder: (context, box, _) {
        final data = box.values.toList();

        _controllers.setEmail = data[0].email;
        return GlobalTextField(
          hintText: "Email",
          controller: _controllers.getEmail,
        );
      },
    );
  }
}
