import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ijarahub/core/constants/app_palette.dart';
import 'package:ijarahub/core/controllers/app_state_controller.dart';
import 'package:ijarahub/core/enums/language_local_enums.dart';

class LanguageSelectionDialog extends StatelessWidget {
  const LanguageSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final AppStateController appStateController =
        Get.find<AppStateController>();

    final isDark = appStateController.isDarkMode;

    return AlertDialog(
      backgroundColor: isDark
          ? AppPalette.DARK_SURFACE_COLOR
          : AppPalette.LIGHT_SURFACE_COLOR,
      title: Text('Select Language'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _languageButton('English', () {
            // I am assuming `changeLocale` method exists on your AppStateController.
            // Please adjust if the method name or parameter is different.
            // I am also assuming LanguageLocalEnums.english exists.
            appStateController.changeLanguage(LanguageLocalEnums.english);
            Get.back();
          }),
          const SizedBox(height: 8),
          _languageButton(
            'हिंदी', // Hindi
            () {
              appStateController.changeLanguage(LanguageLocalEnums.hindi);
              Get.back();
            },
          ),
          const SizedBox(height: 8),
          _languageButton(
            'العربية', // Arabic
            () {
              appStateController.changeLanguage(LanguageLocalEnums.arabic);
              Get.back();
            },
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            'Cancel',
            style: TextStyle(
              color: isDark
                  ? AppPalette.DARK_TEXT_COLOR
                  : AppPalette.LIGHT_TEXT_COLOR,
            ),
          ),
          onPressed: () => Get.back(),
        ),
      ],
    );
  }

  Widget _languageButton(String language, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: onPressed, child: Text(language)),
    );
  }
}
