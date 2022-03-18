import 'package:todo_getx_isar_fa_ff/app/model/models/user/user_model.dart';

abstract class UserService {
  Future<UserModel?> getByUidAuth(String uidAuth);
  Future<UserModel> create(Map<String, dynamic> data);
}
