import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:najwa_brighach/core/const/icons_path.dart';

import '../../../../core/const/app_colors.dart';
import '../../../../core/const/app_sizes.dart';
import '../../../../core/const/token_key.dart';
import '../../../../core/helper/shared_preferences_helper.dart';
import '../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController controller = Get.put(SplashController());
  final String? loginChack = SharedPreferencesHelper().getString(
    TokenKey.login,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primaryColor,
              Color(0xFF2aa0ea),
              Color(0xFF8659E9),
            ],
            stops: [0.0, 0.7, 2.0],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: getHeight(100)),
                child: Image.asset(
                  IconsPath.logo,
                  height: getHeight(317),
                  width: getWidth(289),
                ),
              ),
            ),
            Spacer(),
            SpinKitCircle(size: 55, color: Colors.white),
            SizedBox(height: context.height * 0.1),
          ],
        ),
      ),
    );
  }
}
