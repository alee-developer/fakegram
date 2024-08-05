import 'package:fakegram/views/utils/extensions/context_extensions.dart';
import 'package:fakegram/views/utils/extensions/int_extensions.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:fakegram/views/utils/extensions/string_extensions.dart';

import '../../utils/constants/constants.dart';
import '../../utils/widgets/button_widgets.dart';
import '../../utils/widgets/text_filed_widgets.dart';
import 'auth_widgets.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    var loginKey = GlobalKey<FormState>();

    var view = AuthWidgets(context: context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: loginKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                60.height,
                view.logoView(),
                40.height,
                view.titleView(FORGET_OASSWORD),
                50.height,
                TextFiledWidgets.appTextFieldView(emailController,
                    validator: (text) => text?.defaultValidator(),
                    hintText: PASSWORD),
                16.height,
                TextFiledWidgets.appTextFieldView(passwordController,
                    validator: (text) => text?.defaultValidator(),
                    hintText: "Confirm $PASSWORD"),
                50.height,
                ButtonWidgets().authButtonView(onPressed: () {
                  if (loginKey.currentState!.validate()) {}
                }, SUBMIT, size: Size.fromWidth(context.fullWidth)),

              ],
            ).paddingSymmetric(horizontal: 10, vertical: 10).center(),
          ),
        ),
      ),
    );
  }
}
