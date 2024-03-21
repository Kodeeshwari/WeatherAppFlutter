import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/utils/color_theme.dart';

class LocationAppBar extends StatefulWidget implements PreferredSizeWidget {
  const LocationAppBar({super.key});
  @override
  State createState() => LocationAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(65.0);
}

class LocationAppBarState extends State<LocationAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorTheme.bgColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/ico_menu.svg'),
              ),
              const Spacer(),
              Text(
                'Montreal',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/images/ico_add.svg'))
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              'Sun,November 16',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: ColorTheme.appBarSubTitle),
            ),
          ),
        ),
      ),
    );
  }
}
