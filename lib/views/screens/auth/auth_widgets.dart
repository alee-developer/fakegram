import 'package:fakegram/views/utils/constants/constants.dart';
import 'package:fakegram/views/utils/constants/image_path.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthWidgets {
  BuildContext context;

  AuthWidgets({required this.context});

  Widget titleView(String title) => Text(
        title,
        style: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
      ).align(alignment: Alignment.topLeft);

  Widget logoView() {
    return Image.asset(
      fakegrameLogoPath,
      height: 60,
    );
  }

  Widget forgetPasswordView() {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(onPressed: () {}, child: const Text(FORGET_OASSWORD)),
    );
  }

  Widget orSignupView() {
    return Row(
      children: [
        const Divider(
          color: Colors.black,
        ).expanded(),
        const Text(OR_c).paddingSymmetric(horizontal: 5),
        const Divider(
          color: Colors.black,
        ).expanded(),
      ],
    );
  }

  Widget policyView() {
    return CheckboxListTile(
      title: const Text("By click "),
        controlAffinity: ListTileControlAffinity.leading,
        value: false, onChanged: (value) {});
  }

  Widget doNotAccountView(Widget targetScreen, String title) => Text.rich(
        TextSpan(
          text: DO_NOT_HAVE_ACCOUNT,
          style: const TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: title,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => targetScreen),
                  );
                },
            ),
          ],
        ),
      );
}
