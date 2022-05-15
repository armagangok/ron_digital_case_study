import 'package:flutter/widgets.dart';

class LoginScreenControllerProvider {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();

  TextEditingController get getPassword => _password;
  TextEditingController get getEmail => _username;

  String get  passwordText => _password.text;
  String get  emailtext => _username.text;

  set setPassword(String password) => _password.text = password;
  set setEmail(String username) => _username.text = username;

}

class RegisterScreenControllerProvider {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  TextEditingController get usernameController => _username;
  TextEditingController get emailController => _email;
  TextEditingController get passwordController => _password;

  String get  passwordText => _password.text;
  String get  emailText => _email.text;
  String get  usernameText => _username.text;
  

  set setUsernameText(String value) => _username.text = value;
  set setEmaiText(String value) => _email.text = value;
  set setPasswordText(String value) => _password.text = value;
}
