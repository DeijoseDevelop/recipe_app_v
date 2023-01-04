import 'package:flutter/material.dart';
import 'package:recipe_app_v/src/utils/utils.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {required this.text,
      this.fontSize = 14,
      this.color = ColorPalette.secondary,
      super.key});
  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({
    required this.text,
    this.fontSize = 30,
    this.color = ColorPalette.secondary,
    super.key,
  });
  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
