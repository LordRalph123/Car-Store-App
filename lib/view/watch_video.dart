import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young/view/sale_page.dart';
import 'package:young/widgets/Texts/bold_text.dart';
import 'package:young/widgets/buttons/custombutton.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF9FAFB),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 24.sp,
            color: Color(0XFF040415),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: 24.sp,
              color: Color(0XFF040415),
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: const Color(0XFFF9FAFB),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 10.h, 24.w, 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 450.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/video.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Image.asset(
                    'assets/images/play.png',
                    width: 100.w,
                    height: 100.h,
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoldText(
                    text: "Tesla Model 3", size: 22.spMin, color: Colors.black),
                Row(
                  children: [
                    BoldText(
                      text: "4.5/5",
                      size: 16.spMin,
                      color: Color(0XFFFC6828),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0XFFFC6828),
                      size: 20.spMin,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BoldText(
                  text: "Watch Video",
                  size: 17.spMin,
                  color: Colors.grey,
                ),
              ],
            ),
            31.verticalSpace,
            CustomButton(
                text: "Buy Now",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SalesPage()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
