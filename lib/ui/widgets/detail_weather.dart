import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/everyday_weather.dart';
import 'package:weather_app/ui/widgets/hourly_weather_slider.dart';
import 'package:weather_app/ui/widgets/weather_text_section.dart';
import 'package:weather_app/utils/color_theme.dart';

class DetailWeather extends StatelessWidget {
  const DetailWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: ColorTheme.largeText,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(154, 154, 154, 154),
              spreadRadius: 5.0,
              blurRadius: 7.0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WeatherTextSection(
              weatherTextStr: 'Today',
              padding: const EdgeInsets.fromLTRB(20, 30, 10, 0),
              textStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.normal),
            ),
            const HourlyWeatherSlider(),
            _divider(),
            WeatherTextSection(
              weatherTextStr: 'Every day',
              padding: const EdgeInsets.fromLTRB(20, 30, 10, 0),
              textStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.normal),
            ),
            const EverydayWeather(),
            _divider(),
            WeatherTextSection(
              weatherTextStr: 'Detail',
              padding: const EdgeInsets.fromLTRB(20, 30, 10, 0),
              textStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.normal),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                children: [
                  Text(
                    'Real Feel',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '33°',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 65,
                  ),
                  Text(
                    'Visibility',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '5km',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                children: [
                  Text(
                    'Humidity',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '70%',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    'UV Index',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '0',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
      child: Divider(
        height: 5,
        thickness: 1,
        color: Color.fromARGB(255, 52, 39, 152),
      ),
    );
  }
}
