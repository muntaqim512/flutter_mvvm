import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  MyText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      required this.fontWeight,
      this.fontSize = 14.0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
