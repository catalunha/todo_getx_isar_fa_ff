import 'package:flutter/material.dart';
import 'package:todo_getx_isar_fa_ff/app/view/utils/part/logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: AppLogo(),
    ));
  }
}
