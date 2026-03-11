// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/app_state_controller.dart';

class AppPalette {
  AppPalette._();

  //static const Color LIGHT_PRIMARY_COLOR = Color(0xFFf37b13);
  static const Color LIGHT_PRIMARY_COLOR = Color(0xFF008186);
  static const Color LIGHT_ON_PRIMARY_COLOR = Colors.white;
  static const Color LIGHT_BACKGROUND_COLOR = Color(0xFFF2F2F7);
  static const Color LIGHT_SURFACE_COLOR = Colors.white;

  static const Color LIGHT_HINT_COLOR = Colors.black54;
  static const Color LIGHT_OFF_COLOR = Color.fromARGB(255, 233, 233, 233);

  //static const Color DARK_PRIMARY_COLOR = Color(0xFFf58f3e);
  static const Color DARK_PRIMARY_COLOR = Color(0xFF008186);
  static const Color DARK_C_PRIMARY_COLOR = Color(0xFF008186);
  static const Color DARK_ON_PRIMARY_COLOR = Colors.white;
  static const Color DARK_BACKGROUND_COLOR = Color(0xFF000000);
  static const Color DARK_SURFACE_COLOR = Color(0xFF1C1C1E);

  static const Color DARK_HINT_COLOR = Colors.white70;
  static const Color DARK_OFF_COLOR = Color.fromARGB(255, 39, 39, 39);

  static const Color LIGHT_CONTAINER_COLOR = Color(0xFFFFFFFF);
  static const Color DARK_CONTAINER_COLOR = Color(0xFF1C1C1E);
  static const Color PRIMARY_COLOR = Color(0xFF008186);
  static const Color PRIMARY_COLOR_Light = Color.fromARGB(255, 224, 248, 249);

  // Additional UI Colors
  static const Color SUCCESS_COLOR = Color(0xFF4CAF50);
  static const Color ERROR_COLOR = Color(0xFFF44336);
  static const Color WARNING_COLOR = Color(0xFFFF9800);
  static const Color INFO_COLOR = Color(0xFF008186);
  static const GREY_SHADE = Color(0xFFE1E0E0);
  static const LINK_COLOR = Color(0xFF008186);

  // Accent Colors
  static const Color LIGHT_ACCENT = Color(0xFF00A8AF); // Lighter teal accent
  static const Color LIGHT_SELECTED_BACKGROUND = Color(
    0xFFE0F7F8,
  ); // Light selection background
  static const Color DISABLED_COLOR = Color(0xFFB3E5E6); // Disabled state color

  // Text Colors
  static const Color LIGHT_TEXT_COLOR = Color(0xFF1C1C1E);
  static const Color DARK_TEXT_COLOR = Colors.white;
  static const Color LIGHT_TEXT_SECONDARY_COLOR = Color(0xFF757575);
  static const Color DARK_TEXT_SECONDARY_COLOR = Color(0xFFB0B0B0);

  // Border Colors
  static const Color LIGHT_BORDER = Color(0xFFE0E0E0);
  static const Color DARK_BORDER = Color(0xFF404040);

  // Card Colors
  static const Color LIGHT_CARD = Colors.white;
  static const Color DARK_CARD = Color(0xFF1E1E1E);

  // Existing Dynamic Methods
  static Color getDynamicPrimaryColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_PRIMARY_COLOR;
    } else {
      return LIGHT_PRIMARY_COLOR;
    }
  }
  static Color getContionPrimaryColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_C_PRIMARY_COLOR;
    } else {
      return DARK_C_PRIMARY_COLOR;
    }
  }

  static Color getDynamicOnPrimaryColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_ON_PRIMARY_COLOR;
    } else {
      return LIGHT_ON_PRIMARY_COLOR;
    }
  }

  static Color getDynamicBackgroundColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_BACKGROUND_COLOR;
    } else {
      return LIGHT_BACKGROUND_COLOR;
    }
  }

  static Color getDynamicSurfaceColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_SURFACE_COLOR;
    } else {
      return LIGHT_SURFACE_COLOR;
    }
  }

  static Color getDynamicTextColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_TEXT_COLOR;
    } else {
      return LIGHT_TEXT_COLOR;
    }
  }

  static Color getDynamicHintColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_HINT_COLOR;
    } else {
      return LIGHT_HINT_COLOR;
    }
  }

  static Color getDynamicOffColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_OFF_COLOR;
    } else {
      return LIGHT_OFF_COLOR;
    }
  }

  static Color getDynamicContainerColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    if (isDark) {
      return DARK_CONTAINER_COLOR;
    } else {
      return LIGHT_CONTAINER_COLOR;
    }
  }

  // New Dynamic Methods
  static Color getDynamicBorderColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    return isDark ? DARK_BORDER : LIGHT_BORDER;
  }

  static Color getDynamicCardColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    return isDark ? DARK_CARD : LIGHT_CARD;
  }

  static Color getDynamicTextPrimaryColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    return isDark ? DARK_TEXT_COLOR : LIGHT_TEXT_COLOR;
  }

  static Color getDynamicTextSecondaryColor() {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    return isDark ? DARK_TEXT_SECONDARY_COLOR : LIGHT_TEXT_SECONDARY_COLOR;
  }

  // Generic Dynamic Color Method
  static Color getDynamicColor({
    required Color lightColor,
    required Color darkColor,
  }) {
    final appStateController = Get.find<AppStateController>();
    final isDark = appStateController.isDarkMode;
    return isDark ? darkColor : lightColor;
  }

  // Utility method to get color with opacity
  static Color getColorWithOpacity(Color color, double opacity) {
    return color.withAlpha((255 * opacity).round());
  }

  // Utility method to lighten a color
  static Color lighten(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness(
      (hsl.lightness + amount).clamp(0.0, 1.0),
    );
    return hslLight.toColor();
  }

  // Utility method to darken a color
  static Color darken(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }
}
