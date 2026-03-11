import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:ijarahub/core/routing/app_routes.dart';
import 'package:ijarahub/features/auth/controllers/auth_controller.dart';
import 'package:ijarahub/features/auth/views/widgets/auth_common_app_bar.dart';

import '../../../../core/controllers/app_state_controller.dart';
import '../../../../core/constants/app_palette.dart';

import '../../../../core/widgets/common_rich_text.dart';

import '../../../../core/widgets/loader.dart';
import '../../../../l10n/app_localizations.dart';

import '../../../../core/widgets/brand_logo_with_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _navigateToEmailPasswordLoginScreen(BuildContext context) {
    debugPrint("Navigating to email & password login screen");
    Get.toNamed(AppRoutes.loginWithEmailPassword);
  }

  /// Builds the bottom white section with the login form
  Widget _buildBottomSection({
    required bool isDark,
    required AppLocalizations appLocalizations,
    required BuildContext context,
  }) {
    return Container(
      //height: screenHeight * 0.6,

      //width: double.infinity,
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
      decoration: BoxDecoration(
        color: isDark
            ? AppPalette.DARK_BACKGROUND_COLOR
            : AppPalette.LIGHT_SURFACE_COLOR,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 0.8.sw, minWidth: 0.3.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
              child: Text(
                appLocalizations.authLogin,
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40.h),

            // const SizedBox(height: 20),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SafeArea(
                  child: CommonRichText(
                    text1: appLocalizations.authOrLoginWith,
                    text2: appLocalizations.authEmailAndPassword,
                    onPressText2: () =>
                        _navigateToEmailPasswordLoginScreen(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the grid of social login buttons

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();
    final appLocalizations = AppLocalizations.of(context)!;
    final authController = Get.find<AuthController>();

    return Obx(() {
      bool isDark = appStateController.isDarkMode;
      bool isLoading = authController.isLoading.value;
      return Loader(
        isLoading: isLoading,
        child: Scaffold(
          backgroundColor: isDark
              ? AppPalette.DARK_SURFACE_COLOR
              : AppPalette.LIGHT_PRIMARY_COLOR,

          appBar: AuthCommonAppBar(languageSelection: true),

          body: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            Container(
                              height: 0.2.sh,
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 0.16.sh,

                                child: FittedBox(
                                  child: BrandLogoWithName(isDark: isDark),
                                ),
                              ),
                            ),
                            Expanded(
                              child: _buildBottomSection(
                                isDark: isDark,
                                appLocalizations: appLocalizations,
                                context: context,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
          ),
        ),
      );
    });
  }
}
