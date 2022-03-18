class TaskGroupModel {
  final String date;
  final int finished;
  final int notFinished;
  TaskGroupModel({
    required this.date,
    required this.finished,
    required this.notFinished,
  });

  TaskGroupModel copyWith({
    String? date,
    int? finished,
    int? notFinished,
  }) {
    return TaskGroupModel(
      date: date ?? this.date,
      finished: finished ?? this.finished,
      notFinished: notFinished ?? this.notFinished,
    );
  }
}
