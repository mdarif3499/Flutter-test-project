import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ijarahub/core/constants/assets_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_palette.dart' show AppPalette;

import '../../../../core/enums/language_local_enums.dart';

import '../../../../core/controllers/app_state_controller.dart';
import '../../../../core/routing/app_routes.dart';

class AuthLanguageSelectionScreen extends StatelessWidget {
  const AuthLanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();

    return Obx(() {
      bool isDark = appStateController.isDarkMode;
      return Scaffold(
        backgroundColor: isDark
            ? AppPalette.DARK_SURFACE_COLOR
            : AppPalette.LIGHT_PRIMARY_COLOR,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 0.4.sh, // adjust height as needed
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppPalette.PRIMARY_COLOR,
                    image: DecorationImage(
                      image: AssetImage(
                        AssetsConst.IJARAHUB_LANDINGIMAGE_1000x1080_JPG,
                      ),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  top:
                      MediaQuery.of(context).padding.top +
                      8.h, // to avoid status bar
                  right: 16.w,
                  child: IconButton(
                    icon: Icon(
                      appStateController.isDarkMode
                          ? Icons.light_mode_outlined
                          : Icons.dark_mode_outlined,
                      color: Colors.white, // or any contrasting color
                    ),
                    onPressed: () {
                      appStateController.toggleTheme();
                    },
                  ),
                ),
              ],
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: appStateController.isDarkMode
                      ? AppPalette.DARK_BACKGROUND_COLOR
                      : AppPalette.LIGHT_SURFACE_COLOR,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                ),
                alignment: Alignment.center,
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 32.h),
                        Text(
                          "Please select your language", // Translated text
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        SizedBox(height: 32.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            lnButton(
                              onPressed: () => appStateController
                                  .changeLanguage(LanguageLocalEnums.english),
                              title: LanguageLocalEnums.english.languageName,
                              isDark: isDark,
                            ),
                            SizedBox(height: 18.h),
                            lnButton(
                              onPressed: () => appStateController
                                  .changeLanguage(LanguageLocalEnums.hindi),
                              title: LanguageLocalEnums.hindi.languageName,
                              isDark: isDark,
                            ),
                            SizedBox(height: 18.h),
                            lnButton(
                              onPressed: () => appStateController
                                  .changeLanguage(LanguageLocalEnums.arabic),
                              title: LanguageLocalEnums.arabic.languageName,
                              isDark: isDark,
                            ),
                            SizedBox(height: 50.h),
                          ],
                        ),
                 


                        SizedBox(height: 50.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget lnButton({
    required String title,
    required VoidCallback onPressed,
    required bool isDark,
  }) {
    return OutlinedButton(
      onPressed: () {
        onPressed();
        Get.toNamed(AppRoutes.login, arguments: {'email': null});
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12.r,
          ), // Adjust the radius value here
        ),
        side: BorderSide(
          width: 0.5.w,
          style: BorderStyle.solid,
          color: isDark
              ? AppPalette.DARK_HINT_COLOR
              : AppPalette.LIGHT_HINT_COLOR,
        ),
      ),
      child: SizedBox(
        width: 270.w,
        height: 60.h,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
