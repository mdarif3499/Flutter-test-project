import 'package:flutter/material.dart';
import 'package:ijarahub/core/constants/app_colors.dart';
import 'constants/app_palette.dart';
import 'enums/font_family.dart';

/// A class that holds all the theme data for the IjaraHub application.
class AppTheme {
  AppTheme._();

  // --- CENTRALIZED COLOR DEFINITIONS ---
  static const Color _lightPrimaryColor = AppPalette.LIGHT_PRIMARY_COLOR;
  static const Color _lightOnPrimaryColor = AppPalette.LIGHT_ON_PRIMARY_COLOR;
  static const Color _lightBackgroundColor = AppPalette.LIGHT_BACKGROUND_COLOR;
  static const Color _lightSurfaceColor = AppPalette.LIGHT_SURFACE_COLOR;
  static const Color _lightTextColor = AppPalette.LIGHT_TEXT_COLOR;
  static const Color _lightHintColor = AppPalette.LIGHT_HINT_COLOR;

  static const Color _darkPrimaryColor = AppPalette.DARK_PRIMARY_COLOR;
  static const Color _darkOnPrimaryColor = AppPalette.DARK_ON_PRIMARY_COLOR;
  static const Color _darkBackgroundColor = AppPalette.DARK_BACKGROUND_COLOR;
  static const Color _darkSurfaceColor = AppPalette.DARK_SURFACE_COLOR;
  static const Color _darkTextColor = AppPalette.DARK_TEXT_COLOR;
  static const Color _darkHintColor = AppPalette.DARK_HINT_COLOR;



  /// --- LIGHT THEME CONFIGURATION ---
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightPrimaryColor,
    scaffoldBackgroundColor: _lightBackgroundColor,
    cardColor: _lightSurfaceColor,
    hintColor: _lightHintColor,

    // --- FONT CONFIGURATION ---
    fontFamily: FontFamily.primaryEnglish.value, 
    fontFamilyFallback: [
      FontFamily.primaryArabic.value,             
      FontFamily.primaryHindi.value,  
    ],
    
    appBarTheme: AppBarTheme(
     
      titleTextStyle: TextStyle(
        fontFamily: FontFamily.primaryEnglish.value, 
        fontWeight: FontWeight.w600,
        color: _lightTextColor,
        backgroundColor: AppColors.scaffoldBgSecondaryColor,
        fontSize: 18,
      ),
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(fontWeight: FontWeight.bold, color: _lightTextColor),
      headlineMedium: TextStyle(fontWeight: FontWeight.w700, color: _lightTextColor),
      bodyLarge: TextStyle(fontWeight: FontWeight.w400, color: _lightTextColor),
      bodyMedium: TextStyle(height: 1.5, fontWeight: FontWeight.w400, color: _lightTextColor),
      labelLarge: TextStyle(fontWeight: FontWeight.w600, color: _lightOnPrimaryColor),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightPrimaryColor,
        foregroundColor: _lightOnPrimaryColor,
        textStyle: TextStyle(
          fontFamily: FontFamily.primaryEnglish.value, // <-- Also update here
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
     
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _lightPrimaryColor, width: 2.0),
      ),
       filled: true,
      fillColor: Colors.white,
      hintStyle: TextStyle(color: _lightHintColor, fontWeight: FontWeight.w400),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppPalette.GREY_SHADE),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: 
       // Colors.grey.shade800
       AppPalette.GREY_SHADE
        ),
      ),
     
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            // Use WidgetStateProperty for foregroundColor (text/icon color)
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              // The callback now receives a Set of WidgetState
              (Set<WidgetState> states) {
                // Define different colors for different states
                if (states.contains(WidgetState.pressed)) {
                  return  _lightPrimaryColor; // Color when the button is pressed
                }
                // Return the default color for other states
                return _lightTextColor;
              },
            ),
          ),
        ),
  );

  /// --- DARK THEME CONFIGURATION ---
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkPrimaryColor,
    scaffoldBackgroundColor: _darkBackgroundColor,
    cardColor: _darkSurfaceColor,
    hintColor: _darkHintColor,

    // --- FONT CONFIGURATION (UPDATED) ---
    fontFamily: FontFamily.primaryEnglish.value, 
    fontFamilyFallback: [
      FontFamily.primaryArabic.value,             
      FontFamily.primaryHindi.value,  
    ],

    appBarTheme: AppBarTheme(
     
      titleTextStyle: TextStyle(
        fontFamily: FontFamily.primaryEnglish.value, 
        fontWeight: FontWeight.w600,
        color: _darkTextColor,
        fontSize: 18,
        backgroundColor: AppColors.scaffoldBgSecondaryColor,
      ),
    ),
   
    textTheme: const TextTheme(
        displayLarge: TextStyle(fontWeight: FontWeight.bold, color: _darkTextColor),
        headlineMedium: TextStyle(fontWeight: FontWeight.w700, color: _darkTextColor),
        bodyLarge: TextStyle(fontWeight: FontWeight.w400, color: _darkTextColor),
        bodyMedium: TextStyle(height: 1.5, fontWeight: FontWeight.w400, color: _darkTextColor),
        labelLarge: TextStyle(fontWeight: FontWeight.w600, color: _darkOnPrimaryColor),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _darkPrimaryColor,
        foregroundColor: _darkOnPrimaryColor,
        textStyle: TextStyle(
          fontFamily: FontFamily.primaryEnglish.value, // <-- Also update here
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
      ),
    ),
    
     inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _darkSurfaceColor,
      hintStyle: TextStyle(color: _darkHintColor, fontWeight: FontWeight.w400),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppPalette.GREY_SHADE),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppPalette.GREY_SHADE),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _darkPrimaryColor, width: 2.0),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            // Use WidgetStateProperty for foregroundColor (text/icon color)
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              // The callback now receives a Set of WidgetState
              (Set<WidgetState> states) {
                // Define different colors for different states
                if (states.contains(WidgetState.pressed)) {
                  return  _darkPrimaryColor; // Color when the button is pressed
                }
                // Return the default color for other states
                return _darkTextColor;
              },
            ),
          ),
        ),
  );
}