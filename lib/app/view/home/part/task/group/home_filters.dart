// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todo_getx_hive/app/controllers/home/home_controller.dart';
// import 'package:todo_getx_hive/app/models/task/group_tasks_model.dart';
// import 'package:todo_getx_hive/app/views/home/part/filter_item.dart';

// class HomeFilters extends StatelessWidget {
//   final HomeController _homeController = Get.find();

//   HomeFilters({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Obx(() => Row(
//             children: _homeController.groupTasks
//                 .map(
//                   (task) => FilterItem(groupTasksModel: task),
//                 )
//                 .toList(),
//           )),
//     );
//   }
// }
