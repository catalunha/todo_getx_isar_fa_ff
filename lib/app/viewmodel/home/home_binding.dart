import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/model/isar/hive_connection_factory.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/task/task_repository.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/task/task_repository_impl.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/home/home_controller.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/services/task/task_service.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/services/task/task_service_impl.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<IsarConnectionFactory>(IsarConnectionFactory(), permanent: true);
    Get.lazyPut<TaskRepository>(
        () => TaskRepositoryImp(isarConnectionFactory: Get.find()));
    Get.lazyPut<TaskService>(() => TaskServiceImp(taskRepository: Get.find()));

    Get.lazyPut<HomeController>(() => HomeController(taskService: Get.find()));
  }
}
