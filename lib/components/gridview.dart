import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedCarListView extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/images/featured.png",
    "assets/images/featured.png",
    "assets/images/featured.png",
    "assets/images/featured.png"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.sp),
          child: Image.asset(imagePaths[index]),
        );
      },
    );
  }
}
