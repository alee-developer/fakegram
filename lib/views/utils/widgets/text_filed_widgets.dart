import 'package:flutter/material.dart';

class TextFiledWidgets {
 static Widget appTextFieldView(TextEditingController controller,
      {String? hintText,
      Icon? prefixIcon,
      Icon? suffixIcon,
      String? Function(String?)? validator,
      void Function(String)? onChanged}) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
