import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../services/base_service.dart';
import '../services/hive_service.dart';


class HiveViewModel with ChangeNotifier implements BaseLocalDatabase {
  final HiveDatabaseService _service = HiveDatabaseService();


  @override
  Future<void> deleteData(UserModel user) async {
    await _service.deleteData(user);
  }

  @override
  Future<List<UserModel>> getData(int index) async {
    return await _service.getData(index);
  }

  @override
  Future<void> saveData(UserModel user) async {
    await _service.saveData(user);
  }


  @override
  Future<void> updateData(UserModel user) async {
    await _service.updateData(user);
  }

  @override
  Future<void> clearBox() async {
    await _service.clearBox();
  }
}
