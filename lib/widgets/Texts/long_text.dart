import 'package:flutter/material.dart';

class LongTextWidget extends StatefulWidget {
  final String text;

  LongTextWidget({required this.text});

  @override
  _LongTextWidgetState createState() => _LongTextWidgetState();
}

class _LongTextWidgetState extends State<LongTextWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final span = TextSpan(text: widget.text);
        final tp = TextPainter(
          text: span,
          maxLines: isExpanded ? null : 3,
          textDirection: TextDirection.ltr,
        );
        tp.layout(maxWidth: constraints.maxWidth);

        bool overflow = tp.didExceedMaxLines;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text,
              maxLines: isExpanded ? null : 3,
              overflow:
                  isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
            if (overflow)
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(
                  isExpanded ? 'Read less...' : 'Read more...',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
          ],
        );
      },
    );
  }
}
