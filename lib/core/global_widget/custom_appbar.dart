import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:najwa_brighach/core/global_widget/custom_text.dart';

import '../controller/app_state_controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showThemeSwitcher;
  final List<Widget>? extraActions;
  final bool centerTitle;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showThemeSwitcher = true,
    this.extraActions,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();
    final theme = Theme.of(context);

    return AppBar(
      title: CustomText(
        text: title,
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: theme.textTheme.titleLarge?.color,
      ),
      backgroundColor: theme.appBarTheme.backgroundColor,
      elevation: 0,
      centerTitle: centerTitle,

      surfaceTintColor: Colors.transparent,

      actions: [
        if (extraActions != null) ...extraActions!,

        if (showThemeSwitcher)
          Obx(() => IconButton(
            onPressed: () => appStateController.toggleTheme(),
            icon: Icon(
              appStateController.isDarkMode
                  ? Icons.light_mode_rounded
                  : Icons.dark_mode_rounded,
              color: appStateController.isDarkMode ? Colors.orange : Colors.black54,
            ),
          )),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}