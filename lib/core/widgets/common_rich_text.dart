// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/app_state_controller.dart';
import '../constants/app_palette.dart';



class CommonRichText extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onPressText2;

  final double space;
  final Color? colorText1;
  final Color? colorText2;
  final double sizeText1;
  final double sizeText2;

  const CommonRichText({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressText2,
    this.colorText2,
    this.colorText1,
    this.space = 10,
    this.sizeText1 = 16,
    this.sizeText2 = 15,
  });

  @override

  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();

    

    return Obx(
       () {
        bool isDark = appStateController.isDarkMode;

       final colorText1_ =  colorText1 ?? (isDark ? AppPalette.DARK_HINT_COLOR : AppPalette.LIGHT_HINT_COLOR);
       final colorText2_ =  colorText2?? (isDark ? AppPalette.DARK_PRIMARY_COLOR : AppPalette.LIGHT_PRIMARY_COLOR);



        return RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: text1,
            style: TextStyle(
              color: colorText1_,
              fontWeight: FontWeight.w500,
              fontSize: sizeText1,
            ),
            children: <InlineSpan>[
              WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: SizedBox(
                  width: space,
                ),
              ),
              TextSpan(
                text: text2,
                style: TextStyle(
                  color: colorText2_,
                  fontWeight: FontWeight.w500,
                  fontSize: sizeText2,
                ),
                recognizer: TapGestureRecognizer()..onTap = onPressText2,
              ),
            ],
          ),
        );
      }
    );
  }
}
