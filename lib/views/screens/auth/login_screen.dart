import 'package:fakegram/views/screens/auth/auth_widgets.dart';
import 'package:fakegram/views/utils/constants/constants.dart';
import 'package:fakegram/views/utils/extensions/context_extensions.dart';
import 'package:fakegram/views/utils/extensions/int_extensions.dart';
import 'package:fakegram/views/utils/extensions/string_extensions.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:fakegram/views/utils/widgets/button_widgets.dart';
import 'package:fakegram/views/utils/widgets/text_filed_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var view = AuthWidgets(context: context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: loginKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                100.height,
                view.logoView(),
                20.height,
                view.titleView(LOGIN),
                50.height,
                TextFiledWidgets.appTextFieldView(emailController,
                    validator: (text) => text?.defaultValidator(),
                    hintText: "$USERNAME_s $OR_s $EMAIL_s"),
                16.height,
                TextFiledWidgets.appTextFieldView(passwordController,
                    validator: (text) => text?.defaultValidator(),
                    hintText: PASSWORD),
                5.height,
                view.forgetPasswordView(),
                50.height,
                ButtonWidgets().authButtonView(onPressed: () {
                  if (loginKey.currentState!.validate()) {}
                }, LOGIN, size: Size.fromWidth(context.fullWidth)),
                50.height,
                view.orSignupView(),
                20.height,
                view.doNotAccountView(Container(), SIGNUP)
              ],
            ).paddingSymmetric(horizontal: 10, vertical: 10).center(),
          ),
        ),
      ),
    );
  }
}
