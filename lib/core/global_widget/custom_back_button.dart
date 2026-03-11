import 'package:najwa_brighach/core/const/app_colors.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.iconColor});
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },

      child: SizedBox(
        height: getHeight(20),
        width: getWidth(20),

        child: Icon(Icons.arrow_back, color: iconColor ?? AppColors.textBlack),
      ),
    );
  }
}
