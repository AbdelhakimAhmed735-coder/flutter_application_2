import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    required this.size,
    required FontWeight Weight,
  });

  final String text;
  final double size;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
    );
  }
}
