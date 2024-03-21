import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/ui/widgets/get_started_button.dart';
import 'package:weather_app/ui/widgets/weather_graphic_section.dart';
import 'package:weather_app/ui/widgets/weather_text_section.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/images/bg.svg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const WeatherGraphicSection(),
                  WeatherTextSection(
                    weatherTextStr: 'Weather',
                    padding: const EdgeInsets.fromLTRB(35, 50, 35, 0),
                    textStyle: Theme.of(context).textTheme.titleLarge,
                  ),
                  WeatherTextSection(
                    weatherTextStr: 'Forecast App.',
                    padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                    textStyle: Theme.of(context).textTheme.titleMedium,
                  ),
                  WeatherTextSection(
                    weatherTextStr:
                        'It\'s the newest weather app. It has a bunch of features and that includes most of the ones that every weather app has.',
                    padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                    textStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                  const GetStartedButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
