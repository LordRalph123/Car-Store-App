import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const BoldText(
      {Key? key, required this.text, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w600),
    );
  }
}
