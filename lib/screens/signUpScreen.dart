import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodly/const/colors.dart';
import 'package:foodly/screens/loginScreen.dart';
import 'package:foodly/utils/helper.dart';
import 'package:foodly/widgets/customTextInput.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/signUpScreen";

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Sign Up",
                style: Helper.getTheme(context).headline6,
              ),
              Spacer(),
              Text("Add your details to sign up"),
              Spacer(),
              CustomTextInput(hintText: "Name"),
              Spacer(),
              CustomTextInput(hintText: "Email"),
              Spacer(),
              CustomTextInput(hintText: "Phone number"),
              Spacer(),
              CustomTextInput(hintText: "Adresse"),
              Spacer(),
              CustomTextInput(hintText: "Password"),
              Spacer(),
              CustomTextInput(hintText: "Confirm password"),
              Spacer(),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign up"),
                  )),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: AppColor.orange, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
