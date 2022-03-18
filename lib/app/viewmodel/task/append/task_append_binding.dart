import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/task/append/task_append_controller.dart';

class TaskAppendBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskAppendController>(
        () => TaskAppendController(taskRepository: Get.find()));
  }
}
