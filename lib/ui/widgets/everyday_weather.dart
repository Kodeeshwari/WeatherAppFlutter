import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EverydayWeather extends StatefulWidget {
  const EverydayWeather({super.key});

  @override
  State<EverydayWeather> createState() => _EverydayWeatherState();
}

class _EverydayWeatherState extends State<EverydayWeather> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Row(
                  children: [
                    Text(
                      'Mon, Nov 17',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const Spacer(
                      flex: 7,
                    ),
                    Text(
                      '33°',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const Spacer(),
                    Text(
                      '25°',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/images/clouds.svg'),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
