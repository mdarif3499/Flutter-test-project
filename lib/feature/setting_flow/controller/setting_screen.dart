import 'package:get/get.dart';
import '../../../core/const/token_key.dart';
import '../../../core/route/route.dart';
import '../../../core/helper/shared_preferences_helper.dart';

class SettingsController extends GetxController {
  final prefs = SharedPreferencesHelper();

  Future<void> logout() async {
    await prefs.remove(TokenKey.accessToken);
    await prefs.remove(TokenKey.login);

    Get.offAllNamed(AppRoutes.signInScreen);
  }
}