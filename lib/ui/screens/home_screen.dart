import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/current_weather.dart';

import 'package:weather_app/ui/widgets/location_app_bar.dart';
import 'package:weather_app/ui/widgets/detail_weather.dart';
import 'package:weather_app/utils/color_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorTheme.bgColor,
      appBar: LocationAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurrentWeather(),
            DetailWeather(),
          ],
        ),
      ),
    );
  }
}
