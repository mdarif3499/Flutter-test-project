import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/global_widget/custom_appbar.dart';
import '../controller/setting_screen.dart';


import 'package:najwa_brighach/core/global_widget/custom_text.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingsController());
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      // Using your CustomAppBar for consistent theme switching
      appBar: const CustomAppBar(title: "Settings"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: theme.primaryColor,
                child: const Icon(Icons.person, color: Colors.white),
              ),
              title: CustomText(
                text: "Md Arif Bhuiyan",
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: theme.textTheme.titleLarge?.color,
              ),
              subtitle: CustomText(
                text: "Flutter Developer",
                fontSize: 14,
                color: theme.hintColor,
              ),
            ),
            Divider(color: theme.dividerColor),

            ListTile(
              onTap: () => _showLogoutDialog(context, controller),
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const CustomText(
                text: "Logout",
                color: Colors.redAccent,
                fontWeight: FontWeight.w600,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context, SettingsController controller) {
    final theme = Theme.of(context);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: theme.cardColor,
        title: CustomText(
          text: "Logout",
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: theme.textTheme.titleLarge?.color,
        ),
        content: CustomText(
          text: "Are you sure you want to logout?",
          fontSize: 14,
          color: theme.textTheme.bodyMedium?.color,
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: CustomText(
              text: "Cancel",
              color: theme.hintColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          ElevatedButton(
            onPressed: () => controller.logout(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: const CustomText(
              text: "Logout",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}