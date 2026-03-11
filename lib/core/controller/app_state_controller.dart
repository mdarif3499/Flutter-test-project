import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helper/shared_preferences_helper.dart';

class AppStateController extends GetxController {
  final RxBool _isDarkMode = false.obs;

  bool get isDarkMode => _isDarkMode.value;

  ThemeMode get themeMode => _isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromPrefs();
  }

  void _loadThemeFromPrefs() {
    bool? savedTheme = SharedPreferencesHelper().getBool('isDarkMode');
    if (savedTheme != null) {
      _isDarkMode.value = savedTheme;
    } else {
      _isDarkMode.value = Get.isPlatformDarkMode;
    }
  }

  void toggleTheme() {
    _isDarkMode.value = !_isDarkMode.value;

    Get.changeThemeMode(themeMode);

    SharedPreferencesHelper().setBool('isDarkMode', _isDarkMode.value);
  }
}