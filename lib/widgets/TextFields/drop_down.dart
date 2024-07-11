import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownTextfield extends StatelessWidget {
  final String hintText;
  final VoidCallback onPressed;

  DropDownTextfield({
    required this.hintText,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 173,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), color: const Color(0XFFEDEEEF),),
      child: Row(
        children: [
          7.horizontalSpace,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF8C9199),
                ),
              ),
            ),
          ),
          IconButton(
              icon: Icon(Icons.keyboard_arrow_down,
                  size: 24.spMin, color: Colors.black),
              onPressed: onPressed),
        ],
      ),
    );
  }
}
