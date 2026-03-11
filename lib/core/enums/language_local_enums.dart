import 'package:flutter/material.dart';

enum LanguageLocalEnums {
  defaultLan(
    locale: Locale('en', 'GB'),
    languageName: "English",
    shortName: "En",
  ),
  english(locale: Locale('en', 'GB'), languageName: "English", shortName: "En"),
  arabic(locale: Locale('ar', 'AE'), languageName: "العربية", shortName: "Ar"),
  hindi(locale: Locale('hi', 'IN'), languageName: "हिन्दी", shortName: "Hi");

  final Locale locale;
  final String languageName;
  final String shortName;

  const LanguageLocalEnums({
    required this.locale,
    required this.languageName,
    required this.shortName,
  });

  static LanguageLocalEnums fromString(String localStringWithCountryCode) {
    for (var language in values) {
      if ("${language.locale.languageCode}+${language.locale.countryCode}" ==
          localStringWithCountryCode) {
        return language;
      }
    }
    return defaultLan;
  }
}
