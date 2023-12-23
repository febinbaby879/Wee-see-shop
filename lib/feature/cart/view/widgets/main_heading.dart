import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    super.key,
    required this.text,
    required this.clr,
    required this.fontSize,
  });
  final String text;
  final Color clr;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: TextStyle(
          color: clr,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
