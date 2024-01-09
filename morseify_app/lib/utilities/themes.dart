// app themes only
import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

class AppThemes {
  // light theme setup
  static final lightTheme = ThemeData(
    useMaterial3: true,

    // default font
    fontFamily: primaryFont,

    // default color scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    ),

    // for appbar
    appBarTheme: const AppBarTheme(
      elevation: 1.0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: baseDarkColor,
        fontFamily: primaryFont,
        fontSize: subheading,
        letterSpacing: 1.0,
      ),
    ),
  );

  // dark theme setup
  static final darkTheme = ThemeData(
    useMaterial3: true,

    // default font
    fontFamily: primaryFont,

    // default color scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: baseDarkColor,
      brightness: Brightness.dark,
    ),

    // for appbar
    appBarTheme: const AppBarTheme(
      elevation: 1.0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: baseLightColor,
        fontFamily: primaryFont,
        fontSize: subheading,
        letterSpacing: 1.0,
      ),
    ),
  );
}
