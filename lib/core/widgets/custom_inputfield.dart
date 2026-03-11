import 'package:flutter/material.dart';
import 'package:ijarahub/core/widgets/responsive_input_field.dart';
import 'package:intl/intl.dart';

import '../constants/app_colors.dart';
import 'responsive_space.dart';
import 'responsive_text.dart';

class CustomInputField extends StatelessWidget {
  final String headerTitle;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool? isObscureText;
  final int? maxLines;
  final int? maxLength;
  final bool optionalInputField;
  final Color? fillColor;
  final Color? textColor;
  final bool isDatePicker;
  final bool isTimePicker;
  final double borderRadius;
  final bool hasBorder;
  final bool readOnly;
  final bool isShadow;
  final TextInputType? keyboardType;

  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;

  final FocusNode? focusNode;

  const CustomInputField({
    super.key,
    required this.headerTitle,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.isObscureText,
    this.maxLines,
    this.maxLength,
    this.optionalInputField = false,
    this.fillColor = Colors.transparent,
    this.textColor ,
    this.isDatePicker = false,
    this.isTimePicker = false,
    this.borderRadius = 12,
    this.hasBorder = true,
    this.readOnly = false,
    this.isShadow = false,
    this.keyboardType,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final FocusNode focus = focusNode ?? FocusNode();

    bool isActive() {
      return focus.hasFocus || controller.text.isNotEmpty;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// -------- Header --------
        Row(
          children: [
            ResponsiveText(
              text: headerTitle,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
            if (optionalInputField) ...[
              const ResponsiveSpace(8),
              ResponsiveText(
                text: "(Optional)",
                fontSize: 13,
                // color: Colors.black,
              ),
            ]
          ],
        ),

        const ResponsiveSpace(8),

        /// -------- Input --------
        GestureDetector(
          onTap: () async {
            FocusScope.of(context).unfocus();

            /// 📅 DATE PICKER
            if (isDatePicker) {
              final DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: initialDate ?? DateTime.now(),
                firstDate: firstDate ?? DateTime(1900),
                lastDate: lastDate ?? DateTime(2100),
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: AppColors.pColor,
                        onPrimary: Colors.white,
                        onSurface: Colors.black,
                      ),
                    ),
                    child: child!,
                  );
                },
              );

              if (pickedDate != null) {
                controller.text =
                    DateFormat('dd MMM yyyy').format(pickedDate);
                focus.requestFocus();
              }
            }

            /// ⏰ TIME PICKER
            else if (isTimePicker) {
              final TimeOfDay? pickedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (pickedTime != null) {
                controller.text = pickedTime.format(context);
                focus.requestFocus();
              }
            }
          },
          child: AbsorbPointer(
            absorbing: isDatePicker || isTimePicker,
            child: Container(
              decoration: BoxDecoration(
                color: fillColor,
                borderRadius: BorderRadius.circular(borderRadius),

                /// 🔥 BORDER UI FIX
                border: Border.all(
                  color: isActive()
                      ? AppColors.pColor
                      : Colors.grey.shade300,
                  width: isActive() ? 2 : 1,
                ),

                /// shadow
                boxShadow: isShadow
                    ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(.06),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ]
                    : null,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),

              child: ResponsiveInputField(
                focusNode: focus,
                controller: controller,
                validator: validator,
                obscureText: isObscureText ?? false,
                maxLines: maxLines ?? 1,
                maxLength: maxLength,
                keyboardType: keyboardType,
                isReadOnly:
                readOnly || isDatePicker || isTimePicker,
                fillColor: Colors.transparent,
                borderRadius: borderRadius,
                borderWidth: 0,
                borderColor: Colors.transparent,

                prefixIcon: prefixIcon != null
                    ? Icon(prefixIcon, color: Colors.grey.shade700)
                    : null,

                suffixIcon: suffixIcon != null
                    ? Icon(
                  suffixIcon,
                  color: isActive()
                      ? AppColors.pColor
                      : Colors.grey.shade600,
                )
                    : null,

                hintText: hintText,
              ),
            ),
          ),
        ),

        const ResponsiveSpace(12),
      ],
    );
  }
}
