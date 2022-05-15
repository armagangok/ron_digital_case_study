import 'package:flutter/material.dart';

import './global/initialization/initialization.dart';
import './screens/auth/screen_login/login.dart';

void main() async => await Initialization().initApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      title: 'Ron Digital',
      theme: ThemeData.dark(),
      home: const LoginScreen(),
    );
  }
}
