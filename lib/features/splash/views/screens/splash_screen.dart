import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_palette.dart';
import '../../../../core/controllers/app_state_controller.dart';
import '../../../../core/widgets/brand_logo_with_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    return Scaffold(
      backgroundColor: isDark
          ? AppPalette.DARK_SURFACE_COLOR
          : AppPalette.PRIMARY_COLOR,
      body: Container(
        alignment: Alignment.center,

        child: SizedBox(
          height: 0.16.sh,

          child: FittedBox(child: BrandLogoWithName()),
        ),
      ),
    );
  }
}
