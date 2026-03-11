import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const/app_colors.dart';
import '../const/app_sizes.dart';
import 'custom_text.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final String title;
  final Widget? suffixIcon;
  final bool obsecureText;
  final String? Function(String?)? validator;

  const CustomTextfield({
    super.key,
    required this.controller,
    required this.hintext,
    required this.title,
    this.suffixIcon,
    this.obsecureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          fontSize: getWidth(18),
          fontWeight: FontWeight.w600,
          color: AppColors.primaryTextColor,
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obsecureText,
          validator: validator,
          style: GoogleFonts.inter(fontSize: 16, color: AppColors.textBlack),
          decoration: InputDecoration(
            hintText: hintext,
            filled: true,
            fillColor: AppColors.textFieldColor,
            hintStyle: GoogleFonts.inter(color: AppColors.hintText),
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: Colors.red, width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: Colors.red, width: 1.5),
            ),
            errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
          ),
        ),
      ],
    );
  }
}