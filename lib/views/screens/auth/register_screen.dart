import 'package:fakegram/views/utils/constants/constants.dart';
import 'package:fakegram/views/utils/extensions/context_extensions.dart';
import 'package:fakegram/views/utils/extensions/int_extensions.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:fakegram/views/utils/extensions/string_extensions.dart';


import '../../utils/widgets/button_widgets.dart';
import '../../utils/widgets/text_filed_widgets.dart';
import 'auth_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var signupKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var view = AuthWidgets(context: context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: signupKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                80.height,
                view.logoView(),
                20.height,
                view.titleView(SIGNUP),
                50.height,
                TextFiledWidgets.appTextFieldView(nameController,
                    validator: (text) => text?.defaultValidator(),
                    hintText: "Enter $EMAIL_s"),
                16.height,
                TextFiledWidgets.appTextFieldView(emailController,
                    validator: (text) => text?.defaultValidator(),
                    hintText: "$USERNAME_s $OR_s $EMAIL_s"),
                16.height,
                TextFiledWidgets.appTextFieldView(passwordController,
                    validator: (text) => text?.defaultValidator(),
                    hintText: PASSWORD),
                16.height,
                TextFiledWidgets.appTextFieldView(confirmPasswordController,
                    validator: (text) => text?.defaultValidator(),
                    hintText: "Confirm $PASSWORD"),
                50.height,
                ButtonWidgets().authButtonView(onPressed: () {
                  if (signupKey.currentState!.validate()) {}
                }, SIGNUP, size: Size.fromWidth(context.fullWidth)),
                50.height,
                view.orSignupView(),
                20.height,
                view.doNotAccountView(Container(),LOGIN),
                30.height
              ],
            ).paddingSymmetric(horizontal: 10, vertical: 10).center(),
          ),
        ),
      ),
    );
  }
}
