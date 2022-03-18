import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todo_getx_isar_fa_ff/app/model/models/task/task_model.dart';
import 'package:todo_getx_isar_fa_ff/app/routes.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/services/task/task_service.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/utils/mixins/loader_mixin.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/utils/mixins/message_mixin.dart';

class HomeController extends GetxController with LoaderMixin, MessageMixin {
  final TaskService _taskService;
  HomeController({required TaskService taskService})
      : _taskService = taskService;

  final _loading = false.obs;
  final _message = Rxn<MessageModel>();

  List<TaskModel> allTasks = <TaskModel>[].obs;
  // var groupTasks = <GroupTasksModel>[].obs;

  // var groupDate = ''.obs;
  final dateFormat = DateFormat('y-MM-dd');

  @override
  void onInit() async {
    super.onInit();
    loaderListener(_loading);
    messageListener(_message);
    // await deletePast();
    await loadTasks();
    // await loadTasks(DateTime.now());
    // await groupByDay();
  }

  // Future<void> deletePast() async {
  //   List<TaskModel> _list = await _taskService.readAll();
  //   var now = DateTime.now();
  //   final yesterday = DateTime(now.year, now.month, now.day - 1, 23, 59, 0);
  //   for (var item in _list) {
  //     if (item.date.isBefore(yesterday)) {
  //       await _taskService.delete(item.uuid);
  //     }
  //   }
  // }

  // Future<void> groupByDay() async {
  //   List<TaskModel> _list = await _taskService.readAll();
  //   Map<String, GroupTasksModel> _groupMap = {};
  //   for (var item in _list) {
  //     // print('${item.description} ${item.date}');
  //     // if (!item.finished) {
  //     _groupMap.update(
  //         dateFormat.format(item.date),
  //         (value) => value = item.finished
  //             ? value.copyWith(finished: value.finished + 1)
  //             : value.copyWith(notFinished: value.notFinished + 1),
  //         ifAbsent: () => GroupTasksModel(
  //               date: dateFormat.format(item.date),
  //               finished: item.finished ? 1 : 0,
  //               notFinished: item.finished ? 0 : 1,
  //             ));
  //     // }
  //   }

  //   // print(_groupMap);
  //   List<GroupTasksModel> _groupModel = [];
  //   for (var item in _groupMap.entries) {
  //     _groupModel.add(item.value);
  //   }
  //   _groupModel.sort((a, b) => a.date.compareTo(b.date));
  //   groupTasks(_groupModel);
  // }

  Future<void> loadTasks() async {
    List<TaskModel> _list = await _taskService.readAll();
    allTasks.clear();
    allTasks.addAll(_list);
  }

  // Future<void> loadTasks(DateTime date) async {
  //   // groupDate.value = dateFormat.format(date);
  //   try {
  //     List<TaskModel> _list = await _taskService.findByPeriod(start: date);
  //     List<TaskModel> _finished =
  //         _list.where((task) => task.finished == true).toList();
  //     List<TaskModel> _notFinished =
  //         _list.where((task) => task.finished == false).toList();
  //     allTasks([..._notFinished, ..._finished]);
  //   } on TaskServiceException catch (e) {
  //     _message.value = MessageModel(
  //       title: 'Erro em Service',
  //       message: 'Nao consigo encontrar tasks',
  //       isError: true,
  //     );
  //   } on TaskRespositoryException catch (e) {
  //     _message.value = MessageModel(
  //       title: 'Erro em Respository',
  //       message: 'Nao consigo encontrar tasks',
  //       isError: true,
  //     );
  //   } on HiveBaseException catch (e) {
  //     _message.value = MessageModel(
  //       title: 'Erro em HiveBase',
  //       message: 'Nao consigo encontrar tasks',
  //       isError: true,
  //     );
  //   } catch (e) {
  //     _message.value = MessageModel(
  //       title: 'Erro desconhecido',
  //       message: 'Nao consigo encontrar tasks',
  //       isError: true,
  //     );
  //   }
  // }

  // Future<void> checkOrUncheckTask(TaskModel task) async {
  //   final taskUpdated = task.copyWith(finished: !task.finished);
  //   await _taskService.checkOrUncheckTask(taskUpdated);
  //   await loadTasks(task.date);
  //   await groupByDay();
  // }

  void taskEdit() {
    Get.toNamed(Routes.taskAppend, arguments: null);
  }

  // void editTask(String id) {
  //   var _teamModel = allTasks.firstWhere((element) => element.uuid == id);

  //   Get.toNamed(Routes.taskCreate, arguments: _teamModel);
  // }
}
