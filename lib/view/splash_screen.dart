// splash_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:young/view/HomeScreen.dart';
import 'package:young/view/car_details.dart';
import 'dart:async';

import 'package:young/view/login.dart';
import 'package:young/view/sale_page.dart';
import 'package:young/view/sign_up.dart';
import 'package:young/view/watch_video.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFF5C00),
      body: Center(
        child: Image.asset("assets/images/splash.png"),
      ),
    );
  }
}
