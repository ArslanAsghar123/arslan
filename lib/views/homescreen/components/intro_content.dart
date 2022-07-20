import 'package:flutter/material.dart';
import 'package:profile/Animations/FadeAnimation.dart';
import 'package:profile/Animations/latter.dart';
import 'package:profile/responsive_builder.dart';

class FlutterIntroContent extends StatelessWidget {
  const FlutterIntroContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FadeAnimation(2.6, Word("C")),
              FadeAnimation(2.7, Word("R")),
              FadeAnimation(2.8, Word("E")),
              FadeAnimation(2.9, Word("A")),
              FadeAnimation(3, Word("T")),
              FadeAnimation(3.1, Word("I")),
              FadeAnimation(3.2, Word("V")),
              FadeAnimation(3.3, Word("E")),
              const SizedBox(
                width: 30,
              ),
              Container(
                transform:
                Matrix4.translationValues(0.0, -30.0, 0.0),
                height:(ResponsiveBuilderr.isTablet(context)  || ResponsiveBuilderr.isDesktop(context))? 70:40,
                width:(ResponsiveBuilderr.isTablet(context)  || ResponsiveBuilderr.isDesktop(context))? 150:80,

                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/app.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ],
          ),
          Row(
            children: [
              FadeAnimation(2, Word("F")),
              FadeAnimation(2.1, Word("L")),
              FadeAnimation(2.2, Word("U")),
              FadeAnimation(2.3, Word("T")),
              FadeAnimation(2.4, Word("T")),
              FadeAnimation(2.5, Word("E")),
              FadeAnimation(2.5, Word("R")),
              const SizedBox(
                width: 30,
              ),
              FadeAnimation(2.9, Word("D")),
              FadeAnimation(2.5, Word("E")),
              FadeAnimation(2.5, Word("V")),
            ],
          ),
          Row(
            children: [
              Container(
                transform:
                Matrix4.translationValues(0.0, -30.0, 0.0),
                height:(ResponsiveBuilderr.isDesktop(context)  || ResponsiveBuilderr.isTablet(context))? 70:40,
                width:(ResponsiveBuilderr.isDesktop(context)  || ResponsiveBuilderr.isTablet(context))? 150:80,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image:
                        AssetImage("assets/pakistan.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(30)),
              ),
              const SizedBox(
                width: 30,
              ),
              FadeAnimation(2, Word("P")),
              FadeAnimation(2.1, Word("A")),
              FadeAnimation(2.2, Word("K")),
              FadeAnimation(2.3, Word("I")),
              FadeAnimation(2.4, Word("S")),
              FadeAnimation(2.5, Word("T")),
              FadeAnimation(2.5, Word("A")),
              FadeAnimation(2.5, Word("N")),
            ],
          ),
        ],
      ),
    );
  }
}
