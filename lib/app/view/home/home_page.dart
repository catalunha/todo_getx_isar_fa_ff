import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/view/home/part/pop_menu_photouser.dart';
import 'package:todo_getx_isar_fa_ff/app/view/home/part/task/list/task_list.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/home/home_controller.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/user/user_additional_info/user_additional_info_controller.dart';

class HomePage extends StatefulWidget {
  final HomeController _homeController = Get.find();
  UserController _userController = Get.find();
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
    //   widget._homeController.loadTasks();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Olá, ${widget._userController.userModel?.displayName ?? "Sem nome"}',
          style: TextStyle(color: Colors.black),
        ),
        // iconTheme: IconThemeData(color: context.primaryColor),
        backgroundColor: Colors.white,
        elevation: 2,
        actions: [
          PopMenuButtonPhotoUser(),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              // HomeFilters(),
              Expanded(
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                      minWidth: constraints.maxWidth,
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: IntrinsicHeight(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TaskList(),
                        ],
                      )),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: context.primaryColor,
        onPressed: () {
          widget._homeController.taskEdit();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
