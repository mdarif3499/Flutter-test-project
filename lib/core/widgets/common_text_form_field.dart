import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/app_state_controller.dart';
import '../constants/app_palette.dart';

class CommonTextFormField extends StatefulWidget {
  final String _labelText;
  final bool _offText;
  final String? _errorText;
  final bool _errorTextOn;
  final TextEditingController _controller;
  final bool _obscureText;
  final int? _textLimit;
  final Function(String? text) _validator;
  final Function(String? text) _onChange;
  final TextInputType _keyboardType;
  final double? _height;
  final double _width;
  final bool _multiline;
  final Widget? _prefixIcon;
  final BoxConstraints? _prefixIconConstraints;
  const CommonTextFormField({
    super.key,
    required String labelText,
    String? errorText,
    bool errorTextOn = false,
    required TextEditingController controller,
    bool offText = false,
    bool obscureText = false,
    int? textLimit,
    required TextInputType keyboardType,
    required Function(String? text) validator,
    required Function(String? text) onChange,
    double? height,
    double width = double.infinity,
    bool? multiline,
    Widget? prefixIcon,
    BoxConstraints? prefixIconConstraints,
  }) : _labelText = labelText,
       _errorText = errorText,
       _errorTextOn = errorTextOn,
       _onChange = onChange,
       _keyboardType = keyboardType,
       _controller = controller,
       _obscureText = obscureText,
       _offText = offText,
       _textLimit = textLimit,
       _height = height,
       _width = width,
       _multiline = multiline ?? false,
       _prefixIcon = prefixIcon,
       _prefixIconConstraints = prefixIconConstraints,
       _validator = validator;

  @override
  State<CommonTextFormField> createState() => _CommonTextFormField();
}

class _CommonTextFormField extends State<CommonTextFormField> {
  //this will store the error text
  String? _errorText;

  //to showing red warning around the textfield
  bool _redLightOn = false;

  //to SuffixIcon On Off
  //bool _suffixIconOn = false;

  //to showing error text under the textField
  bool? _errorTextOn;

  //to change obscureText On Off
  late bool _obscureText;

  //late FocusNode _focusNode;

  //doneIconOn
  //bool _errorIconOn = false;

  //for init focus Node listener & value assign
  @override
  void initState() {
    _obscureText = widget._obscureText;
    _errorText = widget._errorText;
    _errorTextOn = widget._errorTextOn;
    // _focusNode = FocusNode();

    // focusNodeListener();

    super.initState();
  }

  //to Close suffix icon press
  void closeButtonPress() {
    textCleaner();
  }

  //to clear text field
  void textCleaner() {
    widget._controller.text = "";
    //_focusNode.unfocus();

    setState(() {
      _errorText = null;
      //_suffixIconOn = false;
      _redLightOn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();

    return Obx(() {
      bool isDark = appStateController.isDarkMode;

      //colors

      final Color errorColor = Colors.red;
      final Color grayColor = AppPalette.GREY_SHADE;
      final Color grayDarkColor = isDark
          ? AppPalette.DARK_HINT_COLOR
          : AppPalette.LIGHT_HINT_COLOR;
      final Color offColor = isDark
          ? AppPalette.DARK_OFF_COLOR
          : AppPalette.LIGHT_OFF_COLOR;
      final Color primaryColor = isDark
          ? AppPalette.DARK_PRIMARY_COLOR
          : AppPalette.LIGHT_PRIMARY_COLOR;
      final Color primaryTextColor = isDark
          ? AppPalette.DARK_TEXT_COLOR
          : AppPalette.LIGHT_TEXT_COLOR;

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: widget._width,
            child: TextFormField(
              maxLines: !widget._multiline ? 1 : null,

              inputFormatters: [
                if (widget._textLimit != null)
                  LengthLimitingTextInputFormatter(widget._textLimit),
              ],
              keyboardType: widget._keyboardType,
              validator: (textForValidation) =>
                  widget._validator(textForValidation),
              controller: widget._controller,
              obscureText: _obscureText,

              decoration: InputDecoration(
                isDense: true,
                fillColor: isDark ? Colors.black : Colors.white,
                filled: true,
                // contentPadding: const EdgeInsets.only(left: 10),
                contentPadding: EdgeInsets.only(
                  left: 10.w,
                  top: 10.h,
                  //bottom: 10,
                  bottom: widget._height == null
                      ? 10.h
                      : (widget._height! - 30).h,
                ),
                prefixIcon: widget._prefixIcon,
                prefixIconConstraints: widget._prefixIconConstraints,

                label: Align(
                  alignment: Alignment.topLeft,

                  child: Padding(
                    padding: EdgeInsets.only(
                      top: widget._height != null ? 0 : 0,
                      bottom: widget._height != null
                          ? (widget._height! - 50).h
                          : 0,
                    ),
                    child: Text(widget._labelText),
                  ),
                ),

                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: !_redLightOn ? grayDarkColor : errorColor,
                ),
                enabledBorder: normalBorder(
                  errorColor: errorColor,
                  primaryColor: grayColor,
                ),
                focusedBorder: normalBorder(
                  errorColor: errorColor,
                  primaryColor: primaryColor,
                ),
                errorBorder: errorBorder(
                  errorColor: errorColor,
                  primaryColor: primaryColor,
                ),
                focusedErrorBorder: errorBorder(
                  errorColor: errorColor,
                  primaryColor: primaryColor,
                ),

                errorStyle: TextStyle(
                  height: 1.5.h,
                  //fontSize: 0,
                ),

                errorMaxLines: 3,

                suffixIconConstraints: BoxConstraints(
                  maxWidth: 50.w,
                  minWidth: 20.w,
                  minHeight: 20.h,
                  maxHeight: 20.h,
                ),
                suffixIcon: !widget._obscureText
                    ? null
                    : IconButton(
                        padding: EdgeInsets.zero,
                        iconSize: 18.sp, // Set icon size responsively
                        onPressed: () {
                          if (_obscureText) {
                            _obscureText = false;
                          } else {
                            _obscureText = true;
                          }
                          setState(() {});
                        },
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: grayDarkColor,
                          size: 18.sp, // Set icon size responsively
                        ),
                      ),
              ),
              cursorHeight: 16.h,
              cursorColor: grayDarkColor,
              cursorWidth: 2.w,
              onChanged: (onChangeText) => widget._onChange(onChangeText),
              textAlign: TextAlign.start,
              textAlignVertical: !widget._multiline
                  ? TextAlignVertical.center
                  : TextAlignVertical.top,
              //focusNode: _focusNode,
              style: TextStyle(
                height: 1.1.h,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: !widget._offText ? primaryTextColor : offColor,
              ),
            ),
          ),
          SizedBox(height: 3.h),
          _errorTextOn != null && _errorText != null
              ? errorMessagePercenter(
                  errorColor: errorColor,
                  primaryColor: primaryColor,
                )
              : const SizedBox(),
        ],
      );
    });
  }

  ConstrainedBox errorMessagePercenter({
    required Color errorColor,
    required Color primaryColor,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxHeight: double.infinity,
        minHeight: 20.h,
      ),
      child: Padding(
        padding: EdgeInsets.all(3.r),
        child: Text(
          _errorText!,

          style: TextStyle(color: errorColor, fontSize: 12.sp),
        ),
      ),
    );
  }

  InputBorder normalBorder({
    required Color errorColor,
    required Color primaryColor,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(
        color: _redLightOn ? errorColor : primaryColor,
        width: _redLightOn ? 1.w : 1.w,
      ),
    );
  }

  InputBorder errorBorder({
    required Color errorColor,
    required Color primaryColor,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(
        color: _redLightOn ? errorColor : primaryColor,
        width: 1.w,
      ),
    );
  }
}
