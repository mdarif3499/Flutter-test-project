import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'enums/language_local_enums.dart'; // Make sure this path is correct

class AppState extends GetxController {
  // --- STATE VARIABLES ---
  final Rx<Locale> selectedLocale = LanguageLocalEnums.english.locale.obs;
  final RxBool isDarkMode = false.obs;


  // --- GETTERS ---
  ThemeMode get currentTheme => isDarkMode.value ? ThemeMode.dark : ThemeMode.light;


  // --- METHODS ---
  void changeLanguage(LanguageLocalEnums language) {
    selectedLocale.value = language.locale;
    Get.updateLocale(selectedLocale.value);
  }


  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(currentTheme);
  }


  // --- LIFECYCLE HOOK ---
  @override
  void onInit() {
    super.onInit();
    
    // --- 1. SET INITIAL THEME FROM SYSTEM ---
    final brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness; // <-- 2. THE FIX
    isDarkMode.value = (brightness == Brightness.dark);
    

    // --- 2. SET INITIAL LOCALE FROM SYSTEM 
    final deviceLocale = Get.deviceLocale;
    if (deviceLocale != null) {
      final isSupported = LanguageLocalEnums.values
          .any((lang) => lang.locale.languageCode == deviceLocale.languageCode);
      
      if (isSupported) {
        selectedLocale.value = Locale(deviceLocale.languageCode);
        Get.updateLocale(selectedLocale.value);
      }
    }
  }
}