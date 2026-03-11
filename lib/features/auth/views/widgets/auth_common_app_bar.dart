import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ijarahub/core/enums/language_local_enums.dart';

import '../../../../core/constants/app_palette.dart';
import '../../../../core/controllers/app_state_controller.dart';
import '../../../../core/widgets/language_selection_dialog.dart';

class AuthCommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String? title;
  final Widget? actionWidget1;
  final Widget? actionWidget2;
  final Color? backgroundColor;
  final Size size;
  final bool forceMaterialTransparency;
  final bool languageSelection;
  final bool showBackButton;
  final bool themeBtn;
  final double leadingWidth;
  final bool leadingOff;
  final VoidCallback? backBtnAction;
  const AuthCommonAppBar({
    super.key,
    this.leading,
    this.title,
    this.actionWidget1,
    this.actionWidget2,
    this.backgroundColor,
    this.size = const Size(double.maxFinite, 80),
    this.forceMaterialTransparency = true,
    this.languageSelection = false,
    this.showBackButton = true,
    this.themeBtn = true,
    this.leadingWidth = 30,
    this.leadingOff = false,
    this.backBtnAction,
  });

  void _backButtonPress(BuildContext context) {
    if (backBtnAction == null) {
      Get.back();
      return;
    }
    backBtnAction!();

    return;
  }

  void _openLanguageSelectWidget() {
    Get.dialog(const LanguageSelectionDialog());
  }

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();
    return Obx(() {
      bool isDark = appStateController.isDarkMode;

      LanguageLocalEnums language = appStateController.currentLocale;
      debugPrint(
        "Get.previousRoute.isNotEmpty :: ${Get.previousRoute.isNotEmpty}",
      );
      debugPrint("Get.previousRoute :: ${Get.previousRoute}");
      return PreferredSize(
        preferredSize: size,
        child: AppBar(
          leadingWidth: leadingWidth,
          forceMaterialTransparency: forceMaterialTransparency,
          scrolledUnderElevation: 0.0,
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: leadingOff
              ? null
              : SizedBox(
                  height: 30,
                  width: 30,

                  child:
                      leading ??
                      (showBackButton && Get.previousRoute.isNotEmpty
                          ? IconButton(
                              onPressed: () => _backButtonPress(context),
                              icon: Icon(
                                Icons.arrow_back,
                                color: isDark
                                    ? AppPalette.DARK_TEXT_COLOR
                                    : AppPalette.LIGHT_TEXT_COLOR,
                              ),
                            )
                          : null),
                ),

          title: Text(
            title ?? "",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            SizedBox(
              height: 30,
              width: 30,
              child:
                  actionWidget2 ??
                  (languageSelection
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(0),
                          ),
                          onPressed: _openLanguageSelectWidget,
                          child: Center(
                            child: Text(
                              language.shortName,
                              style: const TextStyle(
                                fontSize: 12,
                                color: AppPalette.DARK_TEXT_COLOR,
                              ),
                            ),
                          ),
                        )
                      : null),
            ),
            SizedBox(width: 20),
            SizedBox(
              height: 30,
              width: 30,
              child:
                  actionWidget1 ??
                  (themeBtn
                      ? IconButton(
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.center,
                          icon: Icon(
                            isDark
                                ? Icons.light_mode_outlined
                                : Icons.dark_mode_outlined,
                          ),
                          onPressed: () {
                            appStateController.toggleTheme();
                          },
                        )
                      : null),
            ),
            const SizedBox(width: 20),
          ],
        ),
      );
    });
  }

  @override
  Size get preferredSize => size;
}
