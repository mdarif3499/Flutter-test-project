import 'package:flutter/material.dart';

class FocusControl {
  static void unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
