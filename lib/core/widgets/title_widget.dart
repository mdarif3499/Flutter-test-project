// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/app_state_controller.dart';
import '../constants/app_palette.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  final bool off;
  final bool addStar;

  const TitleWidget({
    super.key,
    required this.text,
    this.off = false,
    this.addStar = true,
  });

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();

    return Obx(() {
      bool isDark = appStateController.isDarkMode;

      final offColor = isDark
          ? AppPalette.DARK_OFF_COLOR
          : AppPalette.LIGHT_OFF_COLOR;

      final textStyle = TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: isDark
            ? AppPalette.DARK_TEXT_COLOR
            : AppPalette.LIGHT_TEXT_COLOR,
      );

      // Dynamically adjust alignment based on text direction
      TextAlign textAlign = Directionality.of(context) == TextDirection.rtl
          ? TextAlign.right
          : TextAlign.left;

      return Align(
        alignment: textAlign == TextAlign.left ? Alignment.topLeft : Alignment.topRight,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: text,
                style: !off ? textStyle : textStyle.copyWith(color: offColor),
              ),
              if (addStar)
                TextSpan(
                  text: '*',
                  style: !off
                      ? textStyle.copyWith(color: Colors.red)
                      : textStyle.copyWith(color: offColor),
                ),
            ],
          ),
        ),
      );
    });
  }
}
