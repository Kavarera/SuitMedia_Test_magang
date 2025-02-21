import 'package:get/get.dart';

import '../../../services/shared_pref_service.dart';
import '../controllers/second_screen_controller.dart';

class SecondScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondScreenController>(
      () => SecondScreenController(),
    );
    Get.lazyPut<SharedPrefService>(() => SharedPrefService());
  }
}
