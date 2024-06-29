import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young/view/HomeScreen.dart';
import 'package:young/view/sign_up.dart';
import 'package:young/widgets/Texts/BText.dart';
import 'package:young/widgets/Texts/CText.dart';
import 'package:young/widgets/TextFields/custom_textfield.dart';
import 'package:young/widgets/buttons/custombutton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0XFFF9FAFB),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 38.h, 24.w, 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0XFFFF5C00),
              radius: 38.r,
              child: Center(
                child: BText(
                  text: "C",
                  size: 38.spMin,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 75.h),
            BText(
              text: "Login",
              size: 20.spMin,
              color: Color(0XFF040415),
            ),
            SizedBox(height: 4.spMin),
            CText(
              text: "Welcome to CarStore",
              size: 14.spMin,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 44.h),
            const CustomTextField(
              hintText: "Username",
              prefixIcon: Icons.person_outline_rounded,
            ),
            SizedBox(height: 24.h),
            const CustomTextField(
              hintText: "Password",
              prefixIcon: Icons.lock,
            ),
            SizedBox(height: 24.h),
            Text(
              "Forgot Password?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14.spMin,
                  color: Color(0XFF040415),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 24.h),
            CustomButton(
              text: 'Login',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            SizedBox(height: 45.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 14.spMin,
                    color: Color(0XFF040415),
                  ),
                ),
                SizedBox(width: 6.h),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 14.spMin,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFFF5C00),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
