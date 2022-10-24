import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodly/screens/sendOTPScreen.dart';
import 'package:foodly/utils/helper.dart';
import 'package:foodly/widgets/customTextInput.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});
  static const routeName = "/forgetPassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context) * 0.5,
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(children: [
            Text(
              "Reset Password",
              style: Helper.getTheme(context).headline6,
            ),
            Spacer(),
            Text(
              "Please enter your email to receive instructions to create a new password via email",
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 2,
            ),
            CustomTextInput(hintText: "Email"),
            Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(SendOTPScreen.routeName);
                },
                child: Text("Send email"),
              ),
            )
          ]),
        )),
      ),
    );
  }
}
