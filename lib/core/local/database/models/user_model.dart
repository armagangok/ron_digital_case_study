import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  UserModel({
    required this.email,
    required this.password,
  });
  
  @HiveField(0)
   String email;

  @HiveField(1)
   String password;
  
}
