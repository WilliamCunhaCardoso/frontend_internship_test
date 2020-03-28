import 'dart:math';

import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String text;
  final double fontSize;
  final double circleRadius;

  const CustomCircleAvatar(
      {Key key, this.text, this.fontSize, this.circleRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: circleRadius,
      child: Text(
        text[0].toUpperCase() + text.split(" ")[1][0].toUpperCase(),
        style: TextStyle(
          fontSize: fontSize,
        ),
      ),
      backgroundColor:
          Colors.primaries[Random().nextInt(Colors.primaries.length)],
      foregroundColor: Colors.white,
    );
  }
}
