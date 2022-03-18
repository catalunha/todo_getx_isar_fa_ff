import 'package:isar/isar.dart';

part 'task_model.g.dart';

@Collection()
class TaskModel {
  @Id()
  int? id;
  late String description;
  late DateTime date;
  late bool itsDone;
  late bool itsDoing;
  TaskModel({
    this.id,
    required this.description,
    required this.date,
    required this.itsDone,
    required this.itsDoing,
  });
}
