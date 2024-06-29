import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young/view/HomeScreen.dart';
import 'package:young/widgets/Texts/BText.dart';
import 'package:young/widgets/Texts/CText.dart';
import 'package:young/widgets/TextFields/custom_textfield.dart';
import 'package:young/widgets/buttons/custombutton.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0XFFF9FAFB),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 36.h, 24.w, 15.h),
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
                color: Color(0XFFF9FAFB),
              )),
            ),
            SizedBox(height: 67.h),
            BText(
              text: "Sign Up",
              size: 20.spMin,
              color: Color(0XFF040415),
            ),
            SizedBox(height: 4.h),
            CText(
              text: "Find your dream car!",
              size: 14.spMin,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 19.h),
            const CustomTextField(
                hintText: "Full name",
                prefixIcon: Icons.person_outline_rounded),
            SizedBox(height: 20.h),
            const CustomTextField(
              hintText: "Email address",
              prefixIcon: Icons.email_rounded,
            ),
            SizedBox(height: 20.h),
            const CustomTextField(
                hintText: "Phone number", prefixIcon: Icons.phone_outlined),
            SizedBox(height: 20.h),
            const CustomTextField(
                hintText: "Password", prefixIcon: Icons.lock_outlined),
            SizedBox(height: 41.h),
            CustomButton(
              text: "Sign Up",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 164.w,
                  height: 1.h,
                  color: const Color(0XFFC4C4C4),
                ),
                CText(
                  text: "Or",
                  color: Color(0XFFC4C4C4),
                  size: 14.spMin,
                ),
                Container(
                  width: 164.w,
                  height: 1.h,
                  color: const Color(0XFFC4C4C4),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            CText(
              text: "Sign Up with",
              size: 12.spMin,
              color: Color(0XFFFF5C00),
            ),
            SizedBox(height: 1.h),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SButton(image: "assets/icon/facebook.png", onPressed: () {}),
                  SizedBox(width: 24.w),
                  SButton(image: "assets/icon/instagram.png", onPressed: () {}),
                  SizedBox(width: 24.w),
                  SButton(image: "assets/icon/youtube.png", onPressed: () {}),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CText(
                  text: "Already have an account?",
                  size: 14.spMin,
                  color: Color(0XFF040415),
                ),
                SizedBox(width: 6.w),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: CText(
                    text: "Sign In",
                    size: 14.spMin,
                    color: Color(0XFFFF5C00),
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

class SButton extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;

  const SButton({
    Key? key,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Image.asset(image),
      //   image
      // ),
    );
  }
}
