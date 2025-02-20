import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'app/bindings/shared_pref_binding.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialBinding: SharedPrefBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
