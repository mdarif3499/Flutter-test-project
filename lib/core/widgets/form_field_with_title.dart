// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common_text_form_field.dart';
import 'title_widget.dart';

class FormFieldWithTitle extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String? text) validator;
  final Function(String? text) onChange;
  final String title;
  final double space;
  final bool off;
  final bool addStar;
  final String labelText;
  final TextInputType textInputType;
  final bool obsecureText;
  final double? height;
  final bool? multiline;
  final BuildContext? contextx;  // added to ensure context is passed

  const FormFieldWithTitle({
    super.key,
    required this.textEditingController,
    required this.validator,
    required this.onChange,
    required this.title,
    this.space = 10.0,
    this.addStar = true,
    this.off = false,
    required this.labelText,
    this.textInputType = TextInputType.text,
    this.obsecureText = false,
    this.height,
    this.multiline,
   this.contextx, // receive context here
  });

  @override
  Widget build(contextx) {
    return Directionality(
      // Ensure that the text direction is correctly inherited from the app's locale.
      textDirection: Directionality.of(contextx),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start, // Keep this to handle alignment based on the direction
          children: [
            TitleWidget(

              addStar: addStar,
              text: title,
              off: off,
            ),
            SizedBox(height: space.h),
            CommonTextFormField(
              height: height,
              multiline: multiline,
              obscureText: obsecureText,
              controller: textEditingController,
              keyboardType: textInputType,
              labelText: labelText,
              onChange: onChange,
              validator: validator,
            ),
          ],
        ),
      ),
    );
  }
}
