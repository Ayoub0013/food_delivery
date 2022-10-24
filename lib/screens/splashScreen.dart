import 'dart:async';

import 'package:flutter/material.dart';

import './landignScreen.dart';
import '../utils/helper.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    _timer = new Timer(Duration(microseconds: 3000), () {
      Navigator.of(context).pushReplacementNamed(LandignScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                  Helper.getAssetName("splashIcon.png", "virtual"),
                  fit: BoxFit.fill),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                  Helper.getAssetName("MealMonkeyLogo.png", "virtual")),
            ),
          ],
        ),
      ),
    );
  }
}
