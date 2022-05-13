import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ron_digital/screens/app/home/home.dart';
import 'package:ron_digital/screens/app/home/view-models/qr_viewmodel.dart';

import './screens/app/home/view-models/controller_provider.dart';
import './screens/app/home/view-models/page_indicator_viewmodel.dart';
import './screens/auth/providers/checkbox_viewmodel.dart';
import './screens/auth/providers/controller_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => GlobalViewModel()),
        // ChangeNotifierProvider(create: (_) => PageIndicator()),
        ChangeNotifierProvider(create: (_) => CheckBoxViewModel()),
        ChangeNotifierProvider(create: (_) => PageIndicatorViewModel()),
        ChangeNotifierProvider(create: (_) => QrViewModel()),
        Provider(create: (_) => SigninPageControllerProvider()),
        Provider(create: (_) => HomeScreenControllerProvider()),
        Provider(create: (_) => RegisterPageControllerProvider()),
      ],
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
      home: const HomeScreen(),
    );
  }
}
