import 'package:flutter/material.dart';
import 'package:young/widgets/Texts/bold_text.dart';

class CustomCheckBox extends StatefulWidget {
  final String text;
  final Color? color;
  CustomCheckBox({required this.text, required this.color});

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
        Text(
          widget.text,
          style: TextStyle(color: widget.color),
        ),
      ],
    );
  }
}
