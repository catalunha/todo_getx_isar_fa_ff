import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/auth/login/login_controller.dart';

class AuthLoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(authService: Get.find()));
  }
}
