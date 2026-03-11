import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:najwa_brighach/core/const/api_urls.dart';
import 'package:najwa_brighach/core/const/token_key.dart';
import 'package:najwa_brighach/core/route/route.dart';
import '../../../core/const/app_colors.dart';
import '../../../core/helper/shared_preferences_helper.dart';
import '../../../core/services/debug_ervices/debug_service.dart';
import '../../../core/services/network_caller.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  var isPasswordHidden = true.obs;
  RxBool isLoading = false.obs;
  final prefs = SharedPreferencesHelper();

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  Future<void> loginIn() async {
    if (isLoading.value) return;
    isLoading.value = true;

    Get.dialog(
      const Center(child: SpinKitCircle(size: 70, color: AppColors.primaryColor)),
      barrierDismissible: false,
    );

    Map<String, dynamic> body = {
      'username': "emilys",
      'password':"emilyspass"
    };




    var url = ApiUrls.loginUrl;

    try {
      var response = await NetworkCaller().postRequest(body: body, url: url);

      if (Get.isDialogOpen == true) Get.back();
      DebugServices().logInfo("Login Response Data: ${response.data}");
      if (response.isSuccess) {


        String token = response.data['accessToken'];
        await prefs.setString(TokenKey.accessToken, token);
        await prefs.setString(TokenKey.login, "login");

        emailController.clear();
        passController.clear();

         Get.offAllNamed(AppRoutes.navBarScreen);
      } else {
        _showError("Invalid credentials. Use 'emilys' and 'emilyspass'");
      }
    } catch (e) {
      if (Get.isDialogOpen == true) Get.back();
      _showError("Connection error. Try again.");
    } finally {
      isLoading.value = false;
    }
  }

  void _showError(String msg) {
    EasyLoading.showError(msg, duration: const Duration(seconds: 2));
  }
}