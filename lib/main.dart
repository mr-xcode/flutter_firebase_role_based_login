import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_role_based_login/app/modules/auth_gate/bindings/auth_gate_binding.dart';
import 'package:firebase_role_based_login/firebase_options.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      initialBinding: AuthGateBinding(),
      getPages: AppPages.routes,
    ),
  );
}
