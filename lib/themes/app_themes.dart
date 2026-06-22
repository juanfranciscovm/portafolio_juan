import 'package:flutter/material.dart';

class AppThemes {
  static Color primary = Colors.lightGreen;
  static Color? primaryDarker = Colors.lightGreen[800];

  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
    );

    return ThemeData(colorScheme: colorScheme);
  }
}
