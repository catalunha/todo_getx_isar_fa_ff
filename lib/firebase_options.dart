import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: '...',
    appId: '1:586273731909:android:287ded1fb9804a63e5fa2c',
    messagingSenderId: '586273731909',
    projectId: 'todo-getx-isar-fa-ff',
    authDomain: 'todo-getx-isar-fa-ff.firebaseapp.com',
    storageBucket: 'todo-getx-isar-fa-ff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJ6D-BsMLE3f-hx4FgwhZL7xDy8oyYHRw',
    appId: '1:586273731909:android:287ded1fb9804a63e5fa2c',
    messagingSenderId: '586273731909',
    projectId: 'todo-getx-isar-fa-ff',
    storageBucket: 'todo-getx-isar-fa-ff.appspot.com',
  );
}
