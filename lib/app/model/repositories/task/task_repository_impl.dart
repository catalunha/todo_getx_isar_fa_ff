import 'package:todo_getx_isar_fa_ff/app/model/isar/hive_connection_factory.dart';
import 'package:todo_getx_isar_fa_ff/app/model/models/task/task_model.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/task/task_repository.dart';
import 'package:get/get.dart';

class TaskRepositoryImp implements TaskRepository {
  IsarConnectionFactory _isarConnectionFactory;
  TaskRepositoryImp({
    required IsarConnectionFactory isarConnectionFactory,
  }) : _isarConnectionFactory = isarConnectionFactory;
  var id = 0.obs;
  @override
  Future<void> save(
      {required DateTime date, required String description}) async {
    final conn = await _isarConnectionFactory.openConnection();
    try {
      final taskModel = TaskModel(
        description: description,
        date: date,
        itsDone: false,
        itsDoing: false,
      );

      await conn.writeTxn((isar) async {
        await isar.taskModels.put(taskModel);
      });
    } finally {
      conn.close();
    }
  }

  // @override
  // Future<void> checkOrUncheckTask(TaskModel task) async {
  //   // final conn = await _hiveConnectionFactory.openConnection();
  //   // await conn.update(boxName: 'todo', data: task.toMap());
  // }

  // @override
  // Future<void> clearAll() async {
  //   // final conn = await _hiveConnectionFactory.openConnection();
  //   // await conn.deleteAll('todo');
  // }

  // @override
  // Future<List<TaskModel>> findByPeriod(
  //     {required DateTime start, DateTime? end}) async {
  //   // final startFilter = DateTime(start.year, start.month, start.day, 0, 0, 0);
  //   // DateTime endFilter;
  //   // if (end == null) {
  //   //   endFilter = DateTime(start.year, start.month, start.day, 23, 59, 59);
  //   // } else {
  //   //   endFilter = DateTime(end.year, end.month, end.day, 23, 59, 59);
  //   // }
  //   // final conn = await _hiveConnectionFactory.openConnection();
  //   // final resultTasksMap = await conn.readAll('todo');
  //   // //print('findByPeriod');
  //   // //print(resultTasksMap);
  //   // final resultTasksModel =
  //   //     resultTasksMap.map((e) => TaskModel.fromMap(e)).toList();
  //   // var filtered = <TaskModel>[];
  //   // for (var task in resultTasksModel) {
  //   //   //print(task);
  //   //   if (task.date.isAtSameMomentAs(startFilter) ||
  //   //       task.date.isAtSameMomentAs(endFilter)) {
  //   //     filtered.add(task);
  //   //   } else if (task.date.isAfter(startFilter) &&
  //   //       task.date.isBefore(endFilter)) {
  //   //     filtered.add(task);
  //   //   }
  //   //   //print(filtered);
  //   // }
  //   // return filtered;
  //   return TaskModel();
  // }

  @override
  Future<List<TaskModel>> readAll() async {
    final conn = await _isarConnectionFactory.openConnection();
    var allContacts = await conn.taskModels.buildQuery<TaskModel>().findAll();

    return allContacts;
  }

  // @override
  // Future<void> delete(String uuid) async {
  //   final conn = await _hiveConnectionFactory.openConnection();
  //   await conn.delete(boxName: 'todo', fieldId: uuid);
  // }

  // @override
  // Future<void> update(Map<String, dynamic> data) async {
  //   final conn = await _hiveConnectionFactory.openConnection();
  //   await conn.update(boxName: 'todo', data: data);
  // }
}
