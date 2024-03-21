import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherGraphicSection extends StatelessWidget {
  const WeatherGraphicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 200, 8, 0),
      child: Center(
        child: SvgPicture.asset(
          'assets/images/rainy_lightning_windy_sunny.svg',
          width: 220,
          height: 220,
        ),
      ),
    );
  }
}
