import 'package:get/get.dart';
import '../controller/app_state_controller.dart';
import '../helper/shared_preferences_helper.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SharedPreferencesHelper(), permanent: true);
    Get.put(AppStateController(), permanent: true);
  }
}