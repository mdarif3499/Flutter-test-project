import 'package:najwa_brighach/core/const/app_colors.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import 'package:najwa_brighach/core/const/icons_path.dart';
import 'package:najwa_brighach/core/global_widget/custom_size_box.dart';
import 'package:najwa_brighach/core/global_widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: paddingX()),
        padding: EdgeInsets.all(10),
        height: getHeight(48),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 12,
              spreadRadius: 0,
              color: Colors.black.withValues(alpha: 0.05),
            ),
            BoxShadow(
              offset: Offset(0, -4),
              blurRadius: 12,
              spreadRadius: 0,
              color: Colors.black.withValues(alpha: 0.05),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(IconsPath.home, height: 24),
            SizedBox(width: 10),
            CustomText(
              text: "Search",
              fontSize: getWidth(14, maxWidth: 16),
              fontWeight: FontWeight.w400,
              color: AppColors.textGrey,
            ),
          ],
        ),
      ),
    );
  }
}
