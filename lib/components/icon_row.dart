import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconRow extends StatelessWidget {
  final String image;
  final String text;
  IconRow({required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Image.asset(image),
      14.horizontalSpace,
      Text(text)
      ],
    );
  }
}
