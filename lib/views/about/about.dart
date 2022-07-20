import 'package:flutter/material.dart';
import 'package:profile/views/about/about_mobile.dart';
import 'package:profile/views/about/about_web.dart';
import 'package:responsive_builder/responsive_builder.dart';


class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const AboutViewWeb(),
      mobile: const AboutViewMobile(),
      tablet: const AboutViewMobile(),
    );
  }
}
