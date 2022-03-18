import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/routes.dart';
import 'package:todo_getx_isar_fa_ff/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var a = await Firebase.initializeApp(
    name: 'DEFAULT',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // a.delete();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      getPages: Routes.pageList,
      initialRoute: Routes.splash,
    );
  }
}
