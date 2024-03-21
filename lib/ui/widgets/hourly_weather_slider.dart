import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/utils/color_theme.dart';

class HourlyWeatherSlider extends StatefulWidget {
  const HourlyWeatherSlider({super.key});

  @override
  State<HourlyWeatherSlider> createState() => _HourlyWeatherSliderState();
}

class _HourlyWeatherSliderState extends State<HourlyWeatherSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 24,
          itemBuilder: ((context, index) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 52, 39, 152),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5, 10.0, 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '14.00',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const Spacer(),
                        Text(
                          '32°',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: ColorTheme.secondaryColor,
                                fontSize: 16,
                              ),
                        ),
                        const Spacer(),
                        SvgPicture.asset('assets/images/mostly_sunny.svg'),
                      ],
                    ),
                  ),
                ));
          })),
    );
  }
}
