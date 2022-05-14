import 'package:flutter/widgets.dart';

class LoginScreenControllerProvider {
  TextEditingController _password = TextEditingController();
  TextEditingController _username = TextEditingController();

  TextEditingController get getPassword => _password;
  TextEditingController get getEmail => _username;

  set setPassword(TextEditingController password) => _password = password;
  set setEmail(TextEditingController username) => _username = username;
}

class RegisterScreenControllerProvider {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  TextEditingController get usernameController => _usernameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  set setUsernameController(TextEditingController controller) =>
      _usernameController = controller;
  set setEmailController(TextEditingController controller) =>
      _emailController = controller;
  set setPasswordController(TextEditingController controller) =>
      _passwordController = controller;
}
