// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// class ResponsiveText extends StatelessWidget {
//   final String text;
//   final double fontSize;
//   final FontWeight? fontWeight;
//   final Color? color;
//   final TextAlign? textAlign;
//   final TextOverflow? overflow;
//   final int? maxLines;
//   final double? letterSpacing;
//   final double? height;
//   final VoidCallback? onTap;
//   final FontStyle? fontStyle;
//   final TextDecoration? decoration;
//   final Color? backgroundColor;
//   final List<Shadow>? shadows;
//   final double? wordSpacing;
//
//   const ResponsiveText({
//     super.key,
//     required this.text,
//     this.fontSize = 14,
//     this.fontWeight,
//     this.color,
//     this.textAlign,
//     this.overflow,
//     this.maxLines,
//     this.letterSpacing,
//     this.height,
//     this.onTap,
//     this.fontStyle,
//     this.decoration,
//     this.backgroundColor,
//     this.shadows,
//     this.wordSpacing,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final textWidget = Text(
//       text.tr,
//       textAlign: textAlign,
//       overflow: overflow,
//       maxLines: maxLines,
//       style: TextStyle(
//         fontStyle: fontStyle ?? FontStyle.normal,
//         fontSize: fontSize.sp,
//         fontWeight: fontWeight ?? FontWeight.normal,
//         color: color ?? Colors.white,
//         letterSpacing: letterSpacing?.sp,
//         height: height,
//         decoration: decoration,
//         backgroundColor: backgroundColor,
//         shadows: shadows,
//         wordSpacing: wordSpacing?.sp,
//       ),
//     );
//
//     if (onTap != null) {
//       return GestureDetector(
//         onTap: onTap,
//         child: textWidget,
//       );
//     }
//
//     return textWidget;
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color; // optional, no default
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? letterSpacing;
  final double? height;
  final VoidCallback? onTap;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  final Color? backgroundColor;
  final List<Shadow>? shadows;
  final double? wordSpacing;

  const ResponsiveText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.letterSpacing,
    this.height,
    this.onTap,
    this.fontStyle,
    this.decoration,
    this.backgroundColor,
    this.shadows,
    this.wordSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      text.tr,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        fontStyle: fontStyle ?? FontStyle.normal,
        fontSize: fontSize.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color, // default removed
        letterSpacing: letterSpacing?.sp,
        height: height,
        decoration: decoration,
        backgroundColor: backgroundColor,
        shadows: shadows,
        wordSpacing: wordSpacing?.sp,
      ),
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: textWidget,
      );
    }

    return textWidget;
  }
}
