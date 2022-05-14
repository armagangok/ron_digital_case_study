import 'package:flutter/material.dart';

import './buttons.dart';
import './checkbox.dart';

class RememberMeAndCheckBox extends StatelessWidget {
  const RememberMeAndCheckBox({Key? key}) : super(key: key);

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
