import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young/view/watch_video.dart';
import 'package:young/widgets/Texts/bold_text.dart';
import 'package:young/widgets/Texts/long_text.dart';
import 'package:young/widgets/buttons/check_box.dart';
import 'package:young/widgets/buttons/custombutton.dart';
import 'package:young/components/icon_row.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
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
            color: Color(0XFF849FF6),
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
        padding: EdgeInsets.fromLTRB(24.w, 5.h, 24.w, 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 280.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  image: AssetImage("assets/images/pic_details.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoldText(
                    text: "Tesla Model 3", size: 22.sp, color: Colors.black),
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
                      size: 20.sp,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BoldText(
                  text: "Rs. 18,00,000.00",
                  size: 14.spMin,
                  color: Colors.grey,
                ),
              ],
            ),
            13.verticalSpace,
            LongTextWidget(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas diam nam eu nulla a. Vestibulum aliquet facilisi interdum nibh blandit, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas diam nam eu nulla a. Vestibulum aliquet facilisi interdum nibh blandit"),
            4.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 108.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFF5C00),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: CustomCheckBox(text: "Autopilot", color: Colors.white),
                ),
                Container(
                  width: 108.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFF5C00),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child:
                      CustomCheckBox(text: "360 Camera", color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  child: BoldText(
                      text: "See All", size: 15.spMin, color: Colors.grey),
                ),
              ],
            ),
            18.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconRow(
                        image: "assets/icon/deal.png",
                        text: "Contractor Dealer"),
                    10.verticalSpace,
                    IconRow(
                        image: "assets/icon/location.png",
                        text: "Dehli, India"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconRow(
                        image: "assets/icon/details.png",
                        text: "Car details (Model.year...)"),
                    SizedBox(height: 15.h),
                    IconRow(image: "assets/icon/loan.png", text: "EMI/Loan"),
                  ],
                ),
              ],
            ),
            20.verticalSpace,
            CustomButton(
                text: "Buy Now",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VideoScreen()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
