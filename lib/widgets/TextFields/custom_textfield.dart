import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding:  EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16.spMin,
            fontWeight: FontWeight.w600,
            color: Color(0XFFA8AFB9),
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: const Color(0XFFA8AFB9),
            size: 22.sp,
          ),
        ),
      ),
    );
  }
}
