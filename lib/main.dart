import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {

  // Todo : Add Widgets Binding
  // Todo : Init Local Storage
  // Todo : Await Native Splash
  // Todo : Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value)=> Get.put(AuthenticationRepository()));
  // Todo : Initialize Authentication

  runApp(const App());
}



