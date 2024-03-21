import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/ui/widgets/weather_text_section.dart';

class CurrentWeather extends StatefulWidget {
  const CurrentWeather({super.key});

  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/images/mostly_sunny.svg',
            height: 285,
            width: 285,
          ),
        ),
        WeatherTextSection(
            weatherTextStr: 'Mostly Sunny',
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            textStyle: Theme.of(context).textTheme.displayMedium),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          children: [
            WeatherTextSection(
                weatherTextStr: '30°',
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                textStyle: Theme.of(context).textTheme.displayLarge),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/ico_arrow_up.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  WeatherTextSection(
                      weatherTextStr: '32°',
                      padding: const EdgeInsets.all(0),
                      textStyle: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(
                              color: const Color.fromARGB(255, 159, 159, 159))),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('assets/images/ico_arrow_down.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  WeatherTextSection(
                      weatherTextStr: '25°',
                      padding: const EdgeInsets.all(0),
                      textStyle: Theme.of(context).textTheme.displaySmall),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
