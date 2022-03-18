import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/auth/auth_controller.dart';

class ErroPage extends StatelessWidget {
  final String? errorMessage = Get.arguments;
  ErroPage({
    Key? key,
  }) : super(key: key);

  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Erro...'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(errorMessage ?? 'Não informado.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _authController.logout(),
              child: const Text('Sair'),
            )
          ],
        ),
      ),
    );
  }
}
