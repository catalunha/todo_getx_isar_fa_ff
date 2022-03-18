import 'package:todo_getx_isar_fa_ff/app/model/models/task/task_model.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/task/task_repository.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/services/task/task_service.dart';

class TaskServiceImp implements TaskService {
  TaskRepository _taskRepository;
  TaskServiceImp({required TaskRepository taskRepository})
      : _taskRepository = taskRepository;

  @override
  Future<void> save({required DateTime date, required String description}) =>
      _taskRepository.save(date: date, description: description);

  // @override
  // Future<void> checkOrUncheckTask(TaskModel task) =>
  //     _taskRepository.checkOrUncheckTask(task);

  // @override
  // Future<void> clearAll() => _taskRepository.clearAll();

  // @override
  // Future<List<TaskModel>> findByPeriod(
  //     {required DateTime start, DateTime? end}) {
  //   return _taskRepository.findByPeriod(start: start, end: end);
  // }

  @override
  Future<List<TaskModel>> readAll() => _taskRepository.readAll();

  // @override
  // Future<void> delete(String uuid) => _taskRepository.delete(uuid);

  // @override
  // Future<void> update(Map<String, dynamic> data) =>
  //     _taskRepository.update(data);
}
