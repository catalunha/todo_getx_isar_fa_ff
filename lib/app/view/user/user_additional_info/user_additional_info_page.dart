import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/user/user_additional_info/user_additional_info_controller.dart';

class UserAdditionalInfoPage extends StatefulWidget {
  final UserController _userController = Get.find();
  UserAdditionalInfoPage({Key? key}) : super(key: key);

  @override
  State<UserAdditionalInfoPage> createState() => _UserAdditionalInfoPageState();
}

class _UserAdditionalInfoPageState extends State<UserAdditionalInfoPage> {
  final doingValueNotifier = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações adicionais do usuário.'),
      ),
      body: Obx(
        () => Visibility(
          visible: widget._userController.getAdditionalInformation.value,
          replacement: const CircularProgressIndicator(),
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: doingValueNotifier,
                builder: (_, bool value, __) {
                  return CheckboxListTile(
                    title: Text(
                        'Vc pode usar a opção de (doing/fazendo/em andamento) nas tarefas'),
                    value: value,
                    onChanged: (value) {
                      doingValueNotifier.value = value!;
                    },
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Confirmar'),
                onPressed: () {
                  print('setAdditionalInformation...');
                  widget._userController.setAdditionalInformation(
                      doing: doingValueNotifier.value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
