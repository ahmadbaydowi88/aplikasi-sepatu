import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, "/signIn"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/splash_image.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
