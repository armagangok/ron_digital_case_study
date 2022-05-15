import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ron_digital/screens/auth/providers/checkbox_viewmodel.dart';

import '../../../../core/components/global_elevated_button.dart';
// import '../../../../core/navigation/navigation.dart';
// import '../../../app/home/home.dart';
import '../../../../core/local/database/models/user_model.dart';
import '../../../../core/local/database/viewmodels/hive_viewmodel.dart';
import '../../providers/controller_provider.dart';
import '../../screen_register/register.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginScreenControllerProvider _controllers =
        Provider.of<LoginScreenControllerProvider>(context);

    final HiveViewModel _hiveDatabase = Provider.of<HiveViewModel>(context);
    final CheckBoxViewModel _checkBox = Provider.of<CheckBoxViewModel>(context);

    return GlobalElevatedButton(
      onPressed: () async {
        UserModel _user = UserModel(
          email: _controllers.emailtext,
          password: _controllers.passwordText,
        );

        if (_user.email == "" || _user.password == "") {
        } else {
          if (_checkBox.value == true) {
            await _hiveDatabase.saveData(_user);
          }
        }

        // push(const HomeScreen(), context);
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
