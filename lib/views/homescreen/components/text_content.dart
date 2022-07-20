import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/Animations/FadeAnimation.dart';
import 'package:velocity_x/velocity_x.dart';

class Introduction extends StatelessWidget {
  const Introduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introWidget =
        // "BELIEVE IN YOURSELF!\nThe only way to DISCOVER the limits of the POSSIBLE is to go beyond them into the IMPOSSIBLE.\n"
        "\" Team player with good communication skills and a fast learner  Highly adaptable.Documentation devotee  and"
                "supporter of effective knowledge sharing  Help others to strive for clarity and readability and conform to clean code standards \""
            .text
            .white
            .xl2
            .textStyle(GoogleFonts.comfortaa())
            .maxLines(15)
            .make()
            .w(context.isMobile
                ? context.screenWidth * 80
                : context.percentWidth * 80);

    return Padding(
      padding: const EdgeInsets.only( left: 10.0,top: 40,right: 10),
      child: FadeAnimation(3, introWidget),
    );
  }
}
