import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTextField extends StatelessWidget {
  final double height;
  //final Color fixedColor;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  CTextField({
    required this.height,
    //required this.fixedColor,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: const Color(0XFFEDEEEF),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding:  EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(
            fontSize: 12.spMin,
            fontWeight: FontWeight.w400,
            color: Color(0XFF8C9199),
          ),
        ),
      ),
    );
  }
}
