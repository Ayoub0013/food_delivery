import 'package:flutter/material.dart';
import 'package:foodly/const/colors.dart';
import 'package:foodly/screens/loginScreen.dart';
import 'package:foodly/screens/signUpScreen.dart';
import 'package:foodly/utils/helper.dart';

class LandignScreen extends StatelessWidget {
  static const routeName = "/LandingScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.4,
                decoration: ShapeDecoration(
                    color: AppColor.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                  Helper.getAssetName("MealMonkeyLogo.png", "virtual")),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.3,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(children: [
                  Text(
                    "Discover the best food from over 1,000 restaurants and fast delivery to your doorstep",
                    textAlign: TextAlign.center,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LoginScreen.routeName);
                      },
                      child: Text("Login"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(StadiumBorder(
                              side: BorderSide(
                                  color: AppColor.orange, width: 1.5)))),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SignUpScreen.routeName);
                      },
                      child: Text("Create an account"),
                    ),
                  ),
                  Spacer()
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
