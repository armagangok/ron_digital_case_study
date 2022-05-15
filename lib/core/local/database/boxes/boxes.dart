import 'package:hive/hive.dart';
import 'package:ron_digital/core/local/database/models/user_model.dart';

class Boxes {
  static Box<UserModel> getUsers() =>
      Hive.box<UserModel>('users');
}
