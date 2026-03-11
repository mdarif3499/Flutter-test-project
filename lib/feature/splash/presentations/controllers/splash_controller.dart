import 'dart:developer';

import 'package:get/get.dart';
import 'package:najwa_brighach/core/const/token_key.dart';

import '../../../../core/const/api_urls.dart';
import '../../../../core/helper/shared_preferences_helper.dart';
import '../../../../core/route/route.dart';
import '../../../../core/services/network_caller.dart';

class SplashController extends GetxController {
  Future<void> _moveToNext() async {
    await Future.delayed(Duration(seconds: 3));
    String? loginChack = SharedPreferencesHelper().getString(TokenKey.login);

    bool isFirstLaunch =
        SharedPreferencesHelper().getBool("isFirstLaunch") ?? true;

    if (isFirstLaunch) {
      // set false for next time
      SharedPreferencesHelper().setBool("isFirstLaunch", false);

      // go to onboarding screen
      Get.offAllNamed(AppRoutes.signInScreen);
      return;
    }

    if (loginChack != null && loginChack.isNotEmpty) {
      Get.offAllNamed(AppRoutes.navBarScreen);
    } else {
      Get.offAllNamed(AppRoutes.signInScreen);
    }
  }

  @override
  void onInit() {
    super.onInit();
    _moveToNext();
  }
}


// Future<void> setEndTime() async {
//   String currentTime = DateTime.now().toUtc().toIso8601String();
//
//   Map<String, dynamic> body = {"readEnd": currentTime};
//
//   var url = ApiUrls.updateProfile;
//
//   try {
//     var response = await NetworkCaller().putRequest(body: body, url: url);
//
//     if (response.isSuccess) {
//       log(".....ff.....time....${response.data}....}");
//     } else {
//       log("..........time....${response.message}....}");
//     }
//   } catch (e) {
//     log("..................${e.toString()}");
//     if (Get.isDialogOpen == true) Get.back();
//   } finally {
//     if (Get.isDialogOpen == true) Get.back();
//   }
// }
