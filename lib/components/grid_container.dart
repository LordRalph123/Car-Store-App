import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young/widgets/Texts/bold_text.dart';

class GridContainer extends StatefulWidget {
  final String image;
  final String topic;
  final String subTopic;
  final VoidCallback onTap;
  final VoidCallback onPressed;
  final String view;
  const GridContainer(
      {Key? key,
      required this.image,
      required this.topic,
      required this.subTopic,
      required this.onPressed,
      required this.onTap,
      required this.view});

  @override
  State<GridContainer> createState() => _GridContainerState();
}

class _GridContainerState extends State<GridContainer> {
  bool _isFirstImage = true;

  void _toggleImage() {
    setState(() {
      _isFirstImage = !_isFirstImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 175.w,
          height: 120.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10.h,
                left: 15.w,
                child: Row(
                  children: [
                    Text(
                      widget.view,
                      style: TextStyle(
                        fontSize: 12.spMin,
                        fontWeight: FontWeight.w800,
                        color: Color(0XFFFF5C00),
                      ),
                    ),
                    Text(
                      "View",
                      style: TextStyle(
                        fontSize: 12.spMin,
                        fontWeight: FontWeight.w800,
                        color: Color(0XFFFF5C00),
                      ),
                    ),
                    Image.asset("assets/icon/view.png"),
                  ],
                ),
              ),
              Positioned(
                top: 10.h,
                right: 15.w,
                child: InkWell(
                  onTap: _toggleImage,
                  child: Image.asset(
                    _isFirstImage
                        ? 'assets/icon/hearty.png'
                        : 'assets/icon/heart.png',
                    width: 28.w,
                    height: 28.h,
                  ),
                ),
              ),
              Positioned(
                  bottom: 10.h,
                  left: 10.w,
                  child: Image.asset("assets/icon/small_play.png")),
            ],
          ),
        ),
        Text(
          widget.topic,
          style: TextStyle(
              fontSize: 12.spMin,
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),
        Text(
          widget.subTopic,
          style: TextStyle(
              fontSize: 8.spMin,
              color: Color(0XFF040415),
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

class Data {
  final String image;
  final String topic;
  final String subTopic;
  final String view;
  const Data(
    this.image,
    this.topic,
    this.subTopic,
    this.view,
  );
}

final List<Data> carData = [
  const Data("assets/images/car_one.png", "Audi e-tron Premium",
      "Rs.54,77,823.73", "360"),
  const Data("assets/images/car_two.png", "Suzuki Swift", "Rs.5,85,000", "360"),
  const Data(
      "assets/images/car_three.png", "Suzuki Swift", "Rs.5,85,000", "360"),
  const Data("assets/images/car_four.png", "Audi e-tron Premium", "Rs.5,85,000",
      "360"),
];
