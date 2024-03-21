import 'package:flutter/material.dart';
import 'package:weather_app/ui/screens/home_screen.dart';
import 'package:weather_app/ui/widgets/weather_text_section.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: WeatherTextSection(
              weatherTextStr: 'Get Started',
              padding: const EdgeInsets.fromLTRB(60, 15, 60, 15),
              textStyle: Theme.of(context).textTheme.bodyMedium,
            )),
      ),
    );
  }
}
