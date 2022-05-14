import 'package:flutter/material.dart';

import '../../../../core/components/global_elevated_button.dart';
import '../../../../core/navigation/navigation.dart';
import '../../../app/home/home.dart';
import '../../screen_register/register.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

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

class GoToRegisterPageButton extends StatelessWidget {
  const GoToRegisterPageButton({Key? key}) : super(key: key);

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

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

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
