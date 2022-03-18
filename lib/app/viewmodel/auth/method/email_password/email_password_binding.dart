import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/auth/method/email_password/email_password_controller.dart';

class AuthEmailPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailPasswordController>(
        () => EmailPasswordController(authService: Get.find()));
  }
}
