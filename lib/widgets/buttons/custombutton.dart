import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: const Color(0XFFFF5C00),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16.spMin,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
