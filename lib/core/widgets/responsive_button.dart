
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijarahub/core/constants/app_palette.dart';
import 'package:ijarahub/core/extensions/widget_extensions.dart';
import 'package:ijarahub/core/widgets/responsive_text.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height = 50,
    this.borderRadius = 12,
    this.backgroundColor,
    this.gradientColors,
    this.borderColor,
    this.borderWidth,
    this.width,
    this.titleColor,
    this.fontWeight,
    this.fontSize,
    this.isLoading = false,
    this.trailingIcon,
    this.leadingIcon,
    this.iconColor,
  }) : assert(
  (leadingIcon == null || trailingIcon == null),
  "You cannot provide both leadingIcon and trailingIcon. Use only one.",
  );

  final String title;
  final VoidCallback onTap;
  final double height;
  final double? width;
  final double borderRadius;
  final Color? backgroundColor;
  final List<Color>? gradientColors;
  final Color? borderColor;
  final double? borderWidth;
  final Color? titleColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final bool isLoading;
  final IconData? trailingIcon;
  final IconData? leadingIcon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    // Detect tablet
    final isTablet = MediaQuery.of(context).size.shortestSide >= 600;

    return Container(
      height: height.w, // FIXED: use width scale for height
      width: width?.w ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.w),
        gradient: gradientColors != null
            ? LinearGradient(
          colors: gradientColors!,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
            : null,
        color: gradientColors == null
            ? (backgroundColor ?? AppPalette.LIGHT_PRIMARY_COLOR)
            : null,
        border: Border.all(
          width: (borderWidth ?? 1).w,
          color: borderColor ?? AppPalette.LIGHT_PRIMARY_COLOR,
        ),
      ),
      alignment: Alignment.center,
      child: isLoading
          ? SizedBox(
        height: 22.w,
        width: 22.w,
        child: const CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leadingIcon != null) ...[
            Icon(
              leadingIcon!,
              size: 20.w, // FIXED
              color: iconColor,
            ),
            SizedBox(width: 8.w),
          ],

          /// FIXED: tablet-safe font scaling
          ResponsiveText(
            text: title,
            fontSize: (fontSize ?? 16) *
                (isTablet ? 0.85 : 1.0), // tablet text a little smaller
            fontWeight: fontWeight ?? FontWeight.w500,
            color: titleColor,
          ),

          if (trailingIcon != null) ...[
            SizedBox(width: 8.w),
            Icon(
              trailingIcon!,
              size: 20.w, // FIXED
              color: iconColor,
            ),
          ],
        ],
      ),
    ).onTap(isLoading ? null : onTap);
  }

}
