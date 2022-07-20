import 'package:flutter/material.dart';
import 'package:profile/views/homescreen/homescreen_mobile.dart';
import 'package:profile/widgets/nav_bar/nav_bar_web.dart';
import 'package:profile/views/homescreen/homescreen_web.dart';
import 'package:profile/widgets/nav_bar/navigation_bar_mobile.dart';
import 'package:profile/widgets/nav_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreenNavigator extends StatefulWidget {
  const HomeScreenNavigator({Key? key}) : super(key: key);

  @override
  State<HomeScreenNavigator> createState() => _HomeScreenNavigatorState();
}

class _HomeScreenNavigatorState extends State<HomeScreenNavigator> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const HomePage(),
      mobile: const HomeViewMobile(),
      tablet: const HomeViewMobile(),
    );
  }
}
