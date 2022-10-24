import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodly/utils/helper.dart';
import 'package:foodly/widgets/customTextInput.dart';

class NewPasswordScreen extends StatelessWidget {
  static const routeName = "/newPasswordScreen";
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Column(
              children: [
                Text(
                  "New Password",
                  style: Helper.getTheme(context).headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please enter your email to receive a link to create a new password",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextInput(hintText: "email"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
