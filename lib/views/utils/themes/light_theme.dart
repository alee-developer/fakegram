import 'package:fakegram/views/utils/extensions/outline_boader_extensions.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black54),
  ),
  inputDecorationTheme: InputDecorationTheme(
      fillColor: textFieldBgLightColor,
      focusColor: Colors.black,
      border: const OutlineInputBorder().textFieldBorder,
      enabledBorder: const OutlineInputBorder().textFieldEnableBorder,
      focusedBorder: const OutlineInputBorder().textFieldFocusBorder),
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //         backgroundColor: authButtonLightBGColor,
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
);
