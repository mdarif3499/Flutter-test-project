// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ijarahub/l10n/app_localizations.dart';

import '../constants/app_palette.dart';
import '../controllers/app_state_controller.dart';

Future<bool?> showAlertDialog({
  required BuildContext context,
  ShowAlertDBtnCtn? lftBtn,
  required ShowAlertDBtnCtn rgtBtn,
  String? title,
  required String content,
  Widget? contentWidget,
}) async {
  final localizations = AppLocalizations.of(context)!;
  // set up the buttons
  Widget leftButton() {
    return (lftBtn != null)
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppPalette.getDynamicOffColor(),
              minimumSize: Size(60, 30),
              maximumSize: Size(100, 30),
              padding: EdgeInsets.all(5),
            ),
            child: FittedBox(
              child: Text(
                lftBtn.btnTitle ?? '',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 16,
                  color: AppPalette.getDynamicTextColor(),
                ),
              ),
            ),
            onPressed: () {
              if (lftBtn.fn != null) {
                lftBtn.fn!();
              } else {
                throw UnimplementedError(
                  localizations.errorsAlertDialogArgumentError,
                );
              }
            },
          )
        : const SizedBox();
  }

  Widget rightButton(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(60, 30),
        maximumSize: Size(100, 30),
        padding: EdgeInsets.all(5),
      ),
      child: FittedBox(
        child: Text(
          rgtBtn.btnTitle ?? localizations.commonOk,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      onPressed: () {
        if (rgtBtn.fn == null) {
          Navigator.pop(context, true);
        } else {
          rgtBtn.fn!();
        }
      },
    );
  }

  // show the dialog
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      final appStateController = Get.find<AppStateController>();
      bool isDark = appStateController.isDarkMode;
      return AlertDialog(
        elevation: 0.0,
        shadowColor: Colors.transparent,

        surfaceTintColor: isDark
            ? AppPalette.getDynamicBackgroundColor()
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          side: isDark
              ? const BorderSide(color: Colors.white, width: 1.0)
              : const BorderSide(color: Colors.black, width: 1.0),
          // : BorderSide.none,
        ),
        backgroundColor: AppPalette.getDynamicBackgroundColor(),
        title: Text(
          title ?? localizations.commonAlertTitle,
          style: Theme.of(
            context,
          ).textTheme.displayMedium!.copyWith(color: Colors.red, fontSize: 20),
        ),
        content:
            contentWidget ??
            Text(
              content,
              style: Theme.of(
                context,
              ).textTheme.displaySmall!.copyWith(fontSize: 16),
            ),
        actions: [
          if (lftBtn != null) leftButton(),
          SizedBox(width: 5),
          rightButton(context),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      );
    },
  );
}

class ShowAlertDBtnCtn {
  final String? btnTitle;

  final VoidCallback? fn;
  ShowAlertDBtnCtn({this.btnTitle, this.fn});
}
