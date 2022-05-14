import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './global/providers/provider_helper.dart';
import './screens/auth/screen_login/login.dart';

void main() {
  runApp(
    MultiProvider(
      providers: ProviderHelper().providers,
      child: const MyApp(),
    ),
  );
}

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
