import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/auth/auth_controller.dart';

class PopMenuButtonPhotoUser extends StatelessWidget {
  AuthController _authController = Get.find();
  final UserDisplayNameVN = ValueNotifier<String>('');
  final UserPhotoUrlVN = ValueNotifier<String>('');

  PopMenuButtonPhotoUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: Offset.fromDirection(120.0, 100.0),
      child: Tooltip(
        message: 'Click para opções',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            '${_authController.user?.photoURL}',
            // loadingBuilder: (_, __, ___) {
            //   return Center(child: const CircularProgressIndicator());
            // },
            height: 58,
            width: 58,
            errorBuilder: (_, __, ___) {
              return const Icon(
                Icons.person,
                color: Colors.black,
              );
            },
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: TextButton.icon(
              label: const Text('Sair'),
              onPressed: () {
                _authController.logout();
              },
              icon: const Icon(Icons.exit_to_app),
            ),
          ),
        ];
      },
    );
  }
}
