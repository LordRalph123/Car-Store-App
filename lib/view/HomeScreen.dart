import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young/view/car_details.dart';
import 'package:young/widgets/Texts/BText.dart';
import 'package:young/widgets/Texts/bold_text.dart';
import 'package:young/widgets/TextFields/c_textfield.dart';
import 'package:young/widgets/TextFields/drop_down.dart';
import 'package:young/components/grid_container.dart';
import 'package:young/components/gridview.dart';
import 'package:young/components/slidable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 100.h),
          backgroundColor: Colors.white,
          content: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  100.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 145.w,
                        height: 48.h,
                        child: DropDownTextfield(
                          hintText: "Model",
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 145.w,
                        height: 48.h,
                        child: DropDownTextfield(
                          hintText: "Brand",
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  29.verticalSpace,
                  CTextField(
                    height: 40.h,
                    hintText: "Location",
                    prefixIcon: const Icon(Icons.location_on_outlined),
                  ),
                  const SizedBox(height: 45),
                  BoldText(
                      text: "Price Range", size: 18.spMin, color: Colors.black),
                  SizedBox(height: 5.h),
                  BoldText(
                    text: "Rs.0 - Rs 3,000,000.00",
                    size: 12.spMin,
                    color: Color(0XFF8C9199),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(height: 45.h, child: SlideWidget()),
                  SizedBox(height: 78.h),
                  Center(
                    child: Container(
                      width: 164.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFF5C00),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CarDetails()),
                          );
                        },
                        child: BText(
                            text: "Search",
                            size: 15.spMin,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: BText(
          text: "CarStore",
          size: 24.spMin,
          color: Color(0XFFFF5C00),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
            color: const Color(0XFF040415),
            iconSize: 24.sp,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CarDetails()),
            );
          },
          icon: Icon(Icons.menu),
          color: const Color(0XFF040415),
          iconSize: 24.sp,
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 5.h, 24.w, 1.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFFEDEEEF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 68.h,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 24.w, vertical: 20.h),
                          hintText: "search for Honda Pilot 7-passenger",
                          hintStyle: TextStyle(
                            fontSize: 12.spMin,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF8C9199),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0XFF8C9199),
                            size: 25.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 0),
                  MaterialButton(
                    onPressed: () {
                      _showCustomDialog(context);
                    },
                    child: Image.asset("assets/icon/filter.png"),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 145.h,
                child: FeaturedCarListView(),
              ),
              SizedBox(height: 17.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoldText(
                    text: "Recommended",
                    size: 20.spMin,
                    color: Color(0XFF040415),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: BoldText(
                      color: Colors.grey,
                      text: "See all",
                      size: 16.spMin,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.w,
                        mainAxisSpacing: 30.h,
                      ),
                      shrinkWrap: true,
                      itemCount: carData.length,
                      itemBuilder: (context, index) {
                        return GridContainer(
                          topic: carData[index].topic,
                          onTap: () {},
                          onPressed: () {},
                          image: carData[index].image,
                          subTopic: carData[index].subTopic,
                          view: carData[index].view,
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 40.h, right: 40.w, left: 40.w),
        child: ClipRRect(
          //clipBehavior: BoxDecoration(border: Border.all()),
          //Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(84.r),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30.sp),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30.sp),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30.sp),
                label: "",
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0XFFFF5C00),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
