import 'package:flutter/material.dart';

import '../../../../core/components/global_elevated_button.dart';
import '../../../../core/navigation/navigation.dart';
import '../../../app/home/home.dart';
import '../../components/widgets.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalElevatedButton(
      onPressed: () {
        push(const HomeScreen(), context);
      },
      text: "Login",
    );
  }
}

class RememberMeAndCheckBox extends StatelessWidget {
  const RememberMeAndCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Text("Remember me"),
            CheckBoxWidget(),
          ],
        ),
        const ForgotPasswordButton(),
      ],
    );
  }
}
