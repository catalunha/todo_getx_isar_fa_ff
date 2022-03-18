import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/user/user_repository.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/user/user_repository_impl.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/services/user/user_service.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/services/user/user_service_impl.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/user/user_additional_info/user_additional_info_controller.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserRepository>(
      UserRepositoryImpl(
        firebaseFirestore: Get.find(),
      ),
    );
    Get.put<UserService>(
      UserServiceImpl(
        userRepository: Get.find(),
      ),
    );

    Get.put<UserController>(UserController(
      authController: Get.find(),
      userService: Get.find(),
    ));
  }
}
