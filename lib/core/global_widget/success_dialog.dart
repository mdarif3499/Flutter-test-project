import 'package:najwa_brighach/core/const/app_colors.dart';
import 'package:najwa_brighach/core/const/icons_path.dart';
import 'package:najwa_brighach/core/global_widget/custom_submit_button.dart';
import 'package:najwa_brighach/core/global_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void successDialog({
  required String message,
  required String title,
  required VoidCallback onTap,
  double? padding,
  bool? isImage,
  Color? titleColor,
  subTitleColor,
  String? buttonText,
}) {
  Get.dialog(
    Dialog(
      backgroundColor: AppColors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: padding ?? 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isImage == true
                ? Image.asset(IconsPath.home, height: 90, width: 90)
                : SizedBox(),
            isImage == true ? SizedBox(height: 16) : SizedBox(),
            CustomText(
              text: title,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: titleColor ?? AppColors.textBlack,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            CustomText(
              text: message,
              textAlign: TextAlign.center,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: subTitleColor ?? AppColors.textGrey,
            ),
            const SizedBox(height: 56),
            CustomSubmitButton(text: buttonText ?? "Back", onTap: onTap),
          ],
        ),
      ),
    ),
    barrierDismissible: false,
  );
}
