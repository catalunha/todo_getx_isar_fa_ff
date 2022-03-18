import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/view/home/part/task/list/task.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/home/home_controller.dart';

class TaskList extends StatelessWidget {
  final HomeController _homeController = Get.find();
  TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() => Column(
                children: _homeController.allTasks
                    .map(
                      (task) => Task(taskModel: task),
                    )
                    .toList(),
              ))
        ],
      ),
    );
  }
}
