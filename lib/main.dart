import 'package:flutter/material.dart';
import 'package:foodly/screens/forgetPasswordScreen.dart';
import 'package:foodly/screens/newPasswordScreen.dart';
import 'package:foodly/screens/sendOTPScreen.dart';

import './screens/splashScreen.dart';
import './screens/landignScreen.dart';
import './screens/loginScreen.dart';
import './const/colors.dart';
import './screens/signUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: "Metropolis",
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(AppColor.orange),
                  shape: MaterialStateProperty.all(StadiumBorder()))),
          textTheme: TextTheme(
              headline6: TextStyle(color: AppColor.primary, fontSize: 25),
              bodyText2: TextStyle(color: AppColor.secondary))),
      home: SplashScreen(),
      routes: {
        LandignScreen.routeName: (context) => LandignScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
        SendOTPScreen.routeName: (context) => SendOTPScreen(),
        NewPasswordScreen.routeName: (context) => NewPasswordScreen(),
      },
    );
  }
}
