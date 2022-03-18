import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/auth/auth_controller.dart';

class UserAnalyzingInfoPage extends StatelessWidget {
  final AuthController _authController = Get.find();

  UserAnalyzingInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Em analise...'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Seu acesso esta em análise.'),
            const Text('Por favor, tente acessar novamente mais tarde.'),
            const Text('Ou, entre em contato com o administrador.'),
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
