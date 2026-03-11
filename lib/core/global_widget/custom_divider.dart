import 'package:najwa_brighach/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.width, this.color});
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColors.dividerColor,
      thickness: width ?? 1,
    );
  }
}
