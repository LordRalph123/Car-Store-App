import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const CText(
      {Key? key, required this.text, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w500),
    );
  }
}
