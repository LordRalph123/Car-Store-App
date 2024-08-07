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
            75.verticalSpace,
            BText(
              text: "Login",
              size: 20.spMin,
              color: Color(0XFF040415),
            ),
            4.verticalSpace,
            CText(
              text: "Welcome to CarStore",
              size: 14.spMin,
              color: Color(0XFF000000),
            ),
            44.verticalSpace,
            const CustomTextField(
              hintText: "Username",
              prefixIcon: Icons.person_outline_rounded,
            ),
            24.verticalSpace,
            const CustomTextField(
              hintText: "Password",
              prefixIcon: Icons.lock,
            ),
           24.verticalSpace,
            Text(
              "Forgot Password?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14.spMin,
                  color: Color(0XFF040415),
                  fontWeight: FontWeight.w500),
            ),
            24.verticalSpace,
            CustomButton(
              text: 'Login',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            45.verticalSpace,
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
                6.horizontalSpace,
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
