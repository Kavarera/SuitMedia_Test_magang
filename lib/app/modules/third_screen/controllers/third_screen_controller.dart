import 'package:get/get.dart';

import '../../../data/dummy_data.dart';

class ThirdScreenController extends GetxController {
  List<Map<String, String>> dummyData = GENERATE_DUMMY_DATA(50);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setResult(int index) {
    Get.back(
        result:
            "${dummyData[index]['firstName']} ${dummyData[index]['lastName']}");
  }
}
