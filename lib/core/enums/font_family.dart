
/// Enum for type-safe access to font families declared in pubspec.yaml
enum FontFamily {
  primaryHindi('NotoSansDevanagari'),
  primaryArabic('Cairo'),
  // primaryEnglish('Poppins'),
  primaryEnglish('inter');


  final String value;
  const FontFamily(this.value);
}