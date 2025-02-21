import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'app/bindings/shared_pref_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/services/shared_pref_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPrefService = SharedPrefService();
  await sharedPrefService.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
