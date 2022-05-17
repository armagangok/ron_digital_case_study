import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './core/theme/theme_notifier.dart';
import './global/initialization/initialization.dart';
import './screens/auth/screen_login/login.dart';

void main() async => await Initialization().initApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeNotifier _theme = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      title: 'Ron Digital',
      theme: _theme.isDark ? _theme.darkMode : _theme.ligthMode,
      
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      
      locale: context.locale,
      home: const LoginScreen(),
      
    );
  }
}
