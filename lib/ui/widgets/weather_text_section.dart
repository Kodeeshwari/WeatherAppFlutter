import 'package:flutter/material.dart';

class WeatherTextSection extends StatelessWidget {
  final String weatherTextStr;
  final EdgeInsets padding;
  final TextStyle? textStyle;

  const WeatherTextSection(
      {required this.weatherTextStr,
      required this.padding,
      required this.textStyle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        weatherTextStr,
        style: textStyle,
      ),
    );
  }
}
