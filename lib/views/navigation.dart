import 'package:flutter/material.dart';
import 'package:profile/widgets/nav_bar/nav_bar_web.dart';
import 'package:profile/widgets/nav_bar/navigation_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const NavBar(),
      mobile: const NavigationBarMobile(),
    );
  }
}



