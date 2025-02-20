import 'package:get/get.dart';

import '../services/shared_pref_service.dart';

class SharedPrefBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SharedPrefService>(() => SharedPrefService());
  }
}
