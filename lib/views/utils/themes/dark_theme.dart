import 'package:fakegram/views/utils/extensions/outline_boader_extensions.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  colorScheme: ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    bodySmall: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white70),
  ),
    inputDecorationTheme: InputDecorationTheme(
        fillColor: textFieldBgLightColor,
        focusColor: Colors.white,
        border: OutlineInputBorder().textFieldBorder,
        enabledBorder: OutlineInputBorder().textFieldEnableBorder,
        focusedBorder: OutlineInputBorder().textFieldFocusBorder
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //     style: ElevatedButton.styleFrom(
    //         backgroundColor: authButtonLightBGColor,
    //         shape:
    //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))))
);