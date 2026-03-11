import 'package:flutter/material.dart';

class CustomDecoration {
  /// Container decoration with optional border, radius, color, shadow
  static BoxDecoration container({
    Color? color,             // main container color
    Color? backgroundColor,   // fallback color
    double borderRadius = 8.0,
    Color? borderColor,       // optional border color
    double borderWidth = 1.0, // default border width
    List<BoxShadow>? boxShadow,
  }) {
    return BoxDecoration(
      color: color ?? backgroundColor,
      borderRadius: BorderRadius.circular(borderRadius),
      border: borderColor != null
          ? Border.all(color: borderColor, width: borderWidth)
          : null,
      boxShadow: boxShadow ??
          [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            )
          ],
    );
  }

  /// Circle decoration
  static BoxDecoration circle({
    Color? color,
    double radius = 50,
    Color? borderColor,
    double borderWidth = 1.0,
    List<BoxShadow>? boxShadow,
  }) {
    return BoxDecoration(
      color: color ?? Colors.white,
      shape: BoxShape.circle,
      border: borderColor != null ? Border.all(color: borderColor, width: borderWidth) : null,
      boxShadow: boxShadow ??
          [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            )
          ],
    );
  }
}
