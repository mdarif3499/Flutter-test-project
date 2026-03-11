import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_palette.dart';
import '../controllers/app_state_controller.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool offButton;
  final String text;
  final EdgeInsetsGeometry padding;
  final double width;
  final Color? color;
  final double fontSize;
  final double radius;
  final double elevation;
  final double height;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.offButton = false,
    this.padding = const EdgeInsets.symmetric(vertical: 14),
    this.width = double.infinity,
    this.color,
    this.radius = 8,
    this.fontSize = 18,
    this.height = 50,
    this.elevation = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();
    return Obx(() {
      bool isDark = appStateController.isDarkMode;
      final buttonColor = offButton
          ? (isDark ? AppPalette.DARK_OFF_COLOR : AppPalette.LIGHT_OFF_COLOR)
          : (color ??
                (isDark
                    ? AppPalette.DARK_PRIMARY_COLOR
                    : AppPalette.LIGHT_PRIMARY_COLOR));

      return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: offButton ? null : onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            elevation: 5,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: offButton ? AppPalette.GREY_SHADE : Colors.white,
            ),
          ),
        ),
      );
    });
  }
}
