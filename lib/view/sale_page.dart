import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young/widgets/Texts/bold_text.dart';
import 'package:young/widgets/TextFields/c_textfield.dart';
import 'package:young/widgets/buttons/check_box.dart';
import 'package:young/widgets/buttons/custombutton.dart';
import 'package:young/widgets/TextFields/drop_down.dart';
import 'package:young/widgets/buttons/radio_button.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
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
            size: 17.spMin,
            color: Color(0XFF040415),
          ),
        ),
        elevation: 0.0,
        backgroundColor: const Color(0XFFF9FAFB),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 1.h, 24.w, 2.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(text: "Title", size: 16.spMin, color: Colors.black),
            CTextField(height: 40.h, hintText: "Enter title"),
            12.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(
                        text: "Condition", size: 16.spMin, color: Colors.black),
                    12.verticalSpace,
                    const RButtons()
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(text: "Year", size: 16.spMin, color: Colors.black),
                    SizedBox(height: 3.h),
                    SizedBox(
                      width: 147.h,
                      child: CTextField(height: 35.h, hintText: "Enter Year"),
                    ),
                  ],
                )
              ],
            ),
            17.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(text: "Brand", size: 16.h, color: Colors.black),
                    DropDownTextfield(
                      hintText: "Select Brand",
                      onPressed: () {},
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BoldText(
                        text: "Model", size: 16, color: Colors.black),
                    DropDownTextfield(
                      hintText: "Select Model",
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
            14.verticalSpace,
            BoldText(text: "Features", size: 16.spMin, color: Colors.black),
            CTextField(height: 40.h, hintText: "Search"),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCheckBox(
                      text: "Alarm",
                      color: Colors.black,
                    ),
                    CustomCheckBox(
                      text: "Bluetooth",
                      color: Colors.black,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCheckBox(
                      text: "Cruise Control",
                      color: Colors.black,
                    ),
                    CustomCheckBox(
                      text: "Front Parking Sensor",
                      color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
            4.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(
                        text: "Location", size: 16.spMin, color: Colors.black),
                    SizedBox(
                      width: 173.w,
                      child: CTextField(
                          prefixIcon: const Icon(Icons.location_on_outlined),
                          height: 40.h,
                          hintText: "Search Location"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(
                        text: "Price", size: 16.spMin, color: Colors.black),
                    SizedBox(
                      width: 173.w,
                      child: CTextField(height: 40.h, hintText: "Enter Price"),
                    ),
                  ],
                )
              ],
            ),
            12.verticalSpace,
            BoldText(text: "Description", size: 16.spMin, color: Colors.black),
            Container(
              height: 75.h,
              decoration: BoxDecoration(
                color: const Color(0XFFEDEEEF),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.sp),
                  border: InputBorder.none,
                  hintText: "write description about your car",
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined),
                  ),
                  BoldText(
                      text: "Upload Image/Video",
                      color: Colors.black,
                      size: 14.spMin),
                ],
              ),
            ),
            CustomButton(text: "Sell your Car", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
