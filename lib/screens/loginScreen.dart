import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodly/const/colors.dart';
import 'package:foodly/screens/forgetPasswordScreen.dart';
import 'package:foodly/utils/helper.dart';
import '../screens/signUpScreen.dart';
import '../widgets/customTextInput.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Text(
                "Login",
                style: Helper.getTheme(context).headline6,
              ),
              Spacer(),
              Text("Add your details to login"),
              Spacer(),
              CustomTextInput(
                hintText: "Your email",
              ),
              Spacer(),
              CustomTextInput(
                hintText: "Password",
              ),
              Spacer(),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Login"))),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ForgetPasswordScreen.routeName);
                },
                child: Text("Forget your password?"),
              ),
              Spacer(
                flex: 2,
              ),
              Text("Or login with"),
              Spacer(),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0XFF367FC0))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        Helper.getAssetName("fb.png", "virtual"),
                      ),
                      Text("Login with Facebook")
                    ],
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0XFFDD4B39))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        Helper.getAssetName("google.png", "virtual"),
                      ),
                      Text("Login with Google")
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 4,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(SignUpScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: AppColor.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
