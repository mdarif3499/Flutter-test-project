import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:ijarahub/features/auth/enums/verification_type_enums.dart';

import '../../../../core/constants/app_palette.dart';
import '../../../../core/controllers/app_state_controller.dart';
import '../../../../core/utils/uppercase_text_formatter.dart';
import '../../../../core/widgets/common_timer.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../l10n/app_localizations.dart';

class AuthCommonOtpVerificationWidget extends StatefulWidget {
  final String phoneNumberOrEmail;
  final VerificationTypeEnums verificationType;

  final Function otpSendFn;
  final Function(String otpText) otpVerifyFn;
  final bool resendTimerOn;
  final bool isLoading;
  const AuthCommonOtpVerificationWidget({
    super.key,
    required this.phoneNumberOrEmail,
    required this.otpSendFn,
    required this.otpVerifyFn,
    required this.resendTimerOn,
    required this.verificationType,
    this.isLoading = false,
  });

  @override
  State<AuthCommonOtpVerificationWidget> createState() =>
      _AuthCommonOtpVerificationWidgetState();
}

class _AuthCommonOtpVerificationWidgetState
    extends State<AuthCommonOtpVerificationWidget> {
  late bool _resendTimerOn;
  String _otp = '';

  @override
  void initState() {
    _resendTimerOn = widget.resendTimerOn;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();
    final appLocalizations = AppLocalizations.of(context)!;
    return Obx(() {
      bool isDark = appStateController.isDarkMode;
      return Loader(
        isLoading: widget.isLoading,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            spacing: 20,
            children: [
              _headBodyText(
                isDark: isDark,
                appLocalizations: appLocalizations,
                phoneNumberOrEmail: widget.phoneNumberOrEmail,
                verificationType: widget.verificationType,
              ),
              const SizedBox(height: 10),
              _secondBodyText(
                context: context,
                isDark: isDark,
                resendTimerOn: _resendTimerOn,
                appLocalizations: appLocalizations,
              ),
              OtpTextField(
                keyboardType: TextInputType.text,
                inputFormatters: [UpperCaseTextFormatter()],
                contentPadding: EdgeInsets.all(0),
                numberOfFields: 6,
                borderColor: isDark
                    ? AppPalette.DARK_PRIMARY_COLOR
                    : AppPalette.LIGHT_PRIMARY_COLOR,
                showFieldAsBox: true,
                enabledBorderColor: AppPalette.GREY_SHADE,
                focusedBorderColor: isDark
                    ? AppPalette.DARK_PRIMARY_COLOR
                    : AppPalette.LIGHT_PRIMARY_COLOR,
                onCodeChanged: (String code) {
                  _otp = code;
                },
                onSubmit: (String verificationCode) {
                  widget.otpVerifyFn(verificationCode.toUpperCase());
                },
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                onTap: () => widget.otpVerifyFn(_otp.toUpperCase()),
                //text: "Continue".hardcoded,
                text: appLocalizations.commonContinueButton,
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _headBodyText({
    required bool isDark,
    required String phoneNumberOrEmail,
    required AppLocalizations appLocalizations,
    required VerificationTypeEnums verificationType,
  }) {
    late final String authOtpMessagePart1;
    late final String authOtpMessagePart2;
    if (verificationType == VerificationTypeEnums.email) {
      authOtpMessagePart1 = appLocalizations.authOtpMessagePart1;
      authOtpMessagePart2 = appLocalizations.authOtpMessagePart2;
    } else {
      authOtpMessagePart1 = appLocalizations.authOtpMessagePart1;
      authOtpMessagePart2 = appLocalizations.authOtpMessagePart2Phone;
    }

    final style = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      // color: AppPalette.BLACK_TINT_1,
      color: isDark ? AppPalette.DARK_HINT_COLOR : AppPalette.LIGHT_HINT_COLOR,
    );
    return RichText(
      text: TextSpan(
        text: authOtpMessagePart1,
        style: style,
        children: [
          const WidgetSpan(child: SizedBox(width: 5)),
          TextSpan(
            text: phoneNumberOrEmail,
            style: style.copyWith(
              //color: AppPalette.SECONDARY,
              fontWeight: FontWeight.w600,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 5)),
          TextSpan(text: authOtpMessagePart2, style: style),
        ],
      ),
    );
  }

  Widget _secondBodyText({
    required BuildContext context,
    required bool resendTimerOn,
    required bool isDark,
    required AppLocalizations appLocalizations,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          appLocalizations.authVerificationCodeTitle,

          style: TextStyle(
            //color: AppPalette.TEXT_BLACK,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: isDark
                ? AppPalette.DARK_TEXT_COLOR
                : AppPalette.LIGHT_TEXT_COLOR,
          ),
        ),
        resendTimerOn
            ? SizedBox(
                width: 120,
                height: 40,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CommonTimer(
                    whenTimerComplete: () {
                      setState(() {
                        _resendTimerOn = false;
                      });
                    },
                    startTime: 20,
                  ),
                ),
              )
            : SizedBox(
                width: 120,
                height: 40,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      widget.otpSendFn();
                      setState(() {
                        _resendTimerOn = true;
                      });
                    },
                    child: Text(
                      appLocalizations.authResendCodeButton,

                      style: TextStyle(
                        // color: AppPalette.SECONDARY,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: isDark
                            ? AppPalette.DARK_HINT_COLOR
                            : AppPalette.LIGHT_HINT_COLOR,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
