import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:provider/provider.dart';

import '../../core/local/database/models/user_model.dart';
import '../../main.dart';
import '../providers/provider_helper.dart';

class Initialization {
  Future<void> initApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    final Directory directory =
        await path_provider.getApplicationDocumentsDirectory();

    await Hive.initFlutter(directory.path);
    Hive.registerAdapter(UserModelAdapter());
    await Hive.openBox<UserModel>("users");

    runApp(
      MultiProvider(
        providers: ProviderHelper().providers,
        child: const MyApp(),
      ),
    );
  }
}
