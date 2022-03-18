import 'dart:io';
import 'package:synchronized/synchronized.dart';

import 'package:isar/isar.dart';
import 'package:todo_getx_isar_fa_ff/app/model/models/task/task_model.dart';

class IsarConnectionFactory {
  static IsarConnectionFactory? _instance;
  IsarConnectionFactory._();
  factory IsarConnectionFactory() {
    _instance ??= IsarConnectionFactory._();
    return _instance!;
  }

  Isar? _isar;
  final _lock = Lock();

  Future<Isar> openConnection() async {
    if (_isar == null) {
      await _lock.synchronized(() async {
        if (_isar == null) {
          print('---> opening Connection ...');

          var appPath = Directory.current.path;

          _isar = await Isar.open(
            schemas: [TaskModelSchema],
            directory: appPath,
          );
        }
      });
    }
    print('---> openED Connection ...');
    return _isar!;
  }

  // void onConfigureBoxes() async {}

  void closeConnection() {
    _isar!.close();
  }
}
