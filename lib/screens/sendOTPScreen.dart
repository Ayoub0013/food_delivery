import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodly/const/colors.dart';
import 'package:foodly/screens/newPasswordScreen.dart';
import 'package:foodly/utils/helper.dart';
import '../widgets/OTPTextInput.dart';

class SendOTPScreen extends StatelessWidget {
  const SendOTPScreen({super.key});
  static const routeName = "/sendOTPScreen";

  @override
  Widget build(BuildContext context) {
    var phoneNumber;
    phoneNumber = "0779****77";
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(children: [
          Text(
            "We have sent you an OTP to your email",
            style: Helper.getTheme(context).headline6,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Please check your phone number $phoneNumber continue to reset your password",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OTPInput(),
              OTPInput(),
              OTPInput(),
              OTPInput(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(NewPasswordScreen.routeName);
              },
              child: Text(
                "Next",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't receive?"),
              Text(
                " Click here",
                style: TextStyle(
                    color: AppColor.orange, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ]),
      )),
    );
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
          color: AppColor.placeholderBg,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: OTPTextIpnut(hintText: "*"));
  }
}
