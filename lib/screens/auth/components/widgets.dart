import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/checkbox_viewmodel.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: ((context) => PasswordPage()),
        //   ),
        // );
      },
      child: const Text(
        "Forgot password?",
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class RememberMeCheckBox extends StatelessWidget {
  const RememberMeCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CheckBoxWidget(),
        Text(
          'Remember me',
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CheckBoxViewModel checkBoxViewModel =
        Provider.of<CheckBoxViewModel>(context);
    return Checkbox(
      side: const BorderSide(color: Colors.black),
      value: checkBoxViewModel.value,
      activeColor: Colors.red,
      onChanged: (bool? e) {
        checkBoxViewModel.changeCheckBox(e!);
      },
    );
  }
}
