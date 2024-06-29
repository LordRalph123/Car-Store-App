import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlideWidget extends StatefulWidget {
  @override
  _SlideWidgetState createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
  double _sliderValue = 0;
  double _sliderPosition = 0;
  final double _maxSliderPosition = 250;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: _maxSliderPosition +
              45, 
          height: 8,
          color: const Color(0XFFE5E5E5),
        ),
         Positioned(
          left: 0,
          child: CircleAvatar(
            radius: 10.r,
            backgroundColor: Color(0XFFFF5C00),
            
          ),
        ),
        Positioned(
          left: _sliderPosition,
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              setState(() {
                _sliderPosition += details.delta.dx;
                if (_sliderPosition < 0) {
                  _sliderPosition = 0;
                } else if (_sliderPosition > _maxSliderPosition) {
                  _sliderPosition = _maxSliderPosition;
                }
                _sliderValue = (_sliderPosition / _maxSliderPosition) * 100;
              });
            },
            child: CircleAvatar(
            radius: 10.r,
            backgroundColor: Color(0XFFFF5C00),
            
          ),
          ),
        ),
      ],
    );
  }
}
