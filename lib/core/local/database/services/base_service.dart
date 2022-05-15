import 'package:ron_digital/core/local/database/models/user_model.dart';

abstract class BaseLocalDatabase {
  Future<void> saveData(UserModel user);
  Future<void> deleteData(UserModel user);
  Future<void> updateData(UserModel user);
  Future<List<UserModel>> getData(int index);
  Future<void> clearBox();
}
