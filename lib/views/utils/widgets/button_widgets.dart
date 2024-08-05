import 'package:fakegram/views/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidgets {
  Widget authButtonView(String title,
      {void Function()? onPressed, Size? size}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: authButtonLightBGColor, fixedSize: size,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
        ),
        onPressed: onPressed,
        child: Text(title));
  }
}
