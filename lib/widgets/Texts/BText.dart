import 'package:flutter/material.dart';

class BText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const BText(
      {Key? key, required this.text, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w600),
    );
  }
}
