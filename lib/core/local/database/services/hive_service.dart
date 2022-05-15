import 'package:hive/hive.dart';
import 'package:ron_digital/core/local/database/models/user_model.dart';
import 'package:ron_digital/core/local/database/services/base_service.dart';

class HiveDatabaseService implements BaseLocalDatabase {
  @override
  Future<void> deleteData(UserModel user) async {}

  @override
  Future<List<UserModel>> getData(int index) async {
    final Box box = Hive.box<UserModel>("users");
    List<UserModel> _userModel = box.getAt(0);
    return _userModel;
  }

  @override
  Future<void> saveData(UserModel user) async {
    final Box box = Hive.box<UserModel>("users");
    await clearBox();
    await box.add(user);
  }

  @override
  Future<void> updateData(UserModel user) async {}

  @override
  Future<void> clearBox() async {
    final Box box = Hive.box<UserModel>("users");
    await box.clear();
  }
}
