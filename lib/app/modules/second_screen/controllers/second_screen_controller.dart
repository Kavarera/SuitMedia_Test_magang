import 'package:get/get.dart';
import 'package:tes_magang_suit_media/app/services/shared_pref_service.dart';

class SecondScreenController extends GetxController {
  var _currentName = "".obs;
  var selectedName = "".obs;
  final SharedPrefService _sharedPrefService = Get.find<SharedPrefService>();

  @override
  void onInit() {
    super.onInit();
    selectedName.value = _sharedPrefService.getString("selectedname") ?? "";
    _currentName.value = Get.arguments;
  }

  String getCurrentName() {
    if (_currentName.value.isNotEmpty) {
      return _currentName.value;
    }
    return "No Name";
  }

  void nextPage() {
    Get.toNamed("/third-screen")?.then((result) {
      Get.log("Result: $result");
      if (result != null) {
        selectedName.value = result.toString();
        _sharedPrefService.setString("selectedname", result.toString());
      }
    });
  }
}
