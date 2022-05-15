import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/global_elevated_button.dart';
import '../../providers/controller_provider.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegisterScreenControllerProvider _controllers =
        Provider.of<RegisterScreenControllerProvider>(context);

    return GlobalElevatedButton(
      onPressed: () {
        final User _user = User(userName: _controllers.usernameText);
      },
      text: "Register",
    );
  }
}

class User {
  String userName;
  User({required this.userName});
}
