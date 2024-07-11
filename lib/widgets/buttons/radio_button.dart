import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young/widgets/Texts/bold_text.dart';

class RButtons extends StatefulWidget {
  const RButtons({super.key});

  @override
  State<RButtons> createState() => _RButtonsState();
}

class _RButtonsState extends State<RButtons> {
  int _selectedButtonIndex = 0;

  void _handleButtonTap(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () => _handleButtonTap(0),
              child: CircleAvatar(
                backgroundColor:
                    _selectedButtonIndex == 0 ? Colors.grey : Colors.black,
                radius: 10.r,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 8,
                    child: Center(
                      child: Icon(
                        Icons.circle,
                        color: _selectedButtonIndex == 0
                            ? Colors.grey
                            : Colors.white,
                        size: 12.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 7.w),
             BoldText(text: "New", size: 14.spMin, color: Colors.black),
          ],
        ),
        48.horizontalSpace,
        Row(
          children: [
            InkWell(
              onTap: () => _handleButtonTap(1),
              child: CircleAvatar(
                backgroundColor:
                    _selectedButtonIndex == 1 ? Colors.grey : Colors.black,
                radius: 10,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 8,
                    child: Center(
                      child: Icon(
                        Icons.circle,
                        color: _selectedButtonIndex == 1
                            ? Colors.grey
                            : Colors.white,
                        size: 12.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            7.horizontalSpace,
           BoldText(text: "Used", size: 14.spMin,
          color: Colors.black),
          ],
        ),
        
      ],
    );
  }
}
