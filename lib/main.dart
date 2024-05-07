import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDId-MVWbyDq_yrRAj--AheBMsjvfUwQIY",
      appId: "1:783802732450:android:0fbbb0305a3d3ffe352cfb",
      messagingSenderId: "783802732450",
      projectId: "mini-project-29e75",
      storageBucket: "gs://mini-project-29e75.appspot.com",
    ),
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.SPLASHSCREEN,
      getPages: AppPages.routes,
    ),
  );
}
