import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ijarahub/core/controllers/app_state_controller.dart';
import '../constants/app_colors.dart';
import 'custom_text.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final String title;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? radius;
  final bool? readOnly;
  final Color? borderColor;
  final int? maxLines;
  final int? minLines;
  final void Function()? onTap;
  final ValueChanged<String>? onChanged;
  final bool obsecureText;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextInputType? textInputType;
  final int? maxLength;
  final bool? isTitle;
  final Color? bgColor;
  final bool? isPrefix;
  final bool? autofocus;
  final String? Function(String?)? validator;
  final String? errorText;

  const CustomTextfield({
    super.key,
    required this.controller,
    required this.hintext,
    required this.title,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.obsecureText = false,
    this.textInputType,
    this.radius,
    this.borderColor,
    this.readOnly,
    this.onTap,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.isTitle = true,
    this.bgColor,
    this.isPrefix = true,
    this.autofocus,
    this.textAlign,
    this.textDirection,
    this.validator,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();

    return Obx(() {
      bool isDark = appStateController.isDarkMode;
      final borderRadiusValue = radius ?? 12.r;

      // কালার স্কিম সেটআপ
      final Color darkFieldBg = const Color(0xFF1E1E1E); // আপনার স্ক্রিনের ব্যাকগ্রাউন্ড যদি পিউর ব্ল্যাক হয় তবে এটি ব্যবহার করুন
      final Color lightFieldBg = bgColor ?? Colors.white;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Section
          if (isTitle ?? true)
            Padding(
              padding: EdgeInsets.only(left: 4.w, bottom: 8.h),
              child: CustomText(
                text: title,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: isDark ? Colors.white : AppColors.primaryTextColor,
              ),
            ),

          // TextField Container
          Container(
            width: double.infinity,
            // Clip.hardEdge দিলে কোণার পাতলা রেখাগুলো সাধারণত চলে যায়
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: isDark ? darkFieldBg : lightFieldBg,
              borderRadius: BorderRadius.circular(borderRadiusValue),
              // ডার্ক মোডে বর্ডার রিমুভ করে দেওয়া হয়েছে যাতে ওই সাদা দাগ না আসে
              border: isDark
                  ? null
                  : Border.all(
                color: borderColor ?? AppColors.dividerColor,
                width: 1.2,
              ),
              boxShadow: [
                if (!isDark)
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
              ],
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                // ডার্ক মোডে ইন্টারনাল ফিল কালার রিমুভ করার জন্য
                inputDecorationTheme: const InputDecorationTheme(
                  filled: false,
                ),
              ),
              child: TextFormField(
                controller: controller,
                maxLines: maxLines ?? 1,
                minLines: minLines,
                obscureText: obsecureText,
                obscuringCharacter: "*",
                keyboardType: textInputType,
                readOnly: readOnly ?? false,
                onTap: onTap,
                onChanged: onChanged,
                maxLength: maxLength,
                autofocus: autofocus ?? false,
                textAlign: textAlign ?? TextAlign.start,
                validator: validator,
                cursorColor: const Color(0xFF32A8E9),
                style: GoogleFonts.figtree(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: isDark ? Colors.white : AppColors.textBlack,
                ),
                decoration: InputDecoration(
                  hintText: hintext,
                  isDense: true,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  prefixIcon: (isPrefix ?? true) && prefixIcon != null
                      ? prefixIcon
                      : null,
                  suffixIcon: suffixIcon,
                  hintStyle: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: isDark ? Colors.grey[500] : AppColors.hintText,
                  ),
                  errorText: errorText,
                  counterText: "",
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}