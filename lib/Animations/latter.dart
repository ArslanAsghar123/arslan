import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class Word extends StatefulWidget {
  final String word;

  Word(
    this.word,
  );
  @override
  _WordState createState() => _WordState();
}

class _WordState extends State<Word> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  Color color = Colors.white;
  int flag = 1;
  double fontsize = 50;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1000,
        ),
        value: 1,
        lowerBound: 0.5);
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.elasticInOut,
      reverseCurve: Curves.elasticInOut,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          fontsize = 60;
        } else if (sizingInformation.isTablet) {
          fontsize = 50;
        } else {
          fontsize = 40;
        }



        return GestureDetector(
          onTapDown: (t) {
            animationController
              ..reset()
              ..forward();
            setState(() {
              color = Vx.purple400;
            });
          },
          onTapUp: (t) {
            setState(() {
              color = flag == 1 ? const Color(0xFF34B0F3) : Colors.white;
              color == Colors.white ? flag = 1 : flag = 0;
            });
          },
          child: MouseRegion(
            onEnter: (event) {
              animationController
                ..reset()
                ..forward();
              setState(() {
                color = Vx.purple400;
              });
            },
            onExit: (event) {
              setState(() {
                color = flag == 1 ? const Color(0xFF34B0F3) : Colors.white;
                color == Colors.white ? flag = 1 : flag = 0;
              });
            },
            child: ScaleTransition(
              scale: animation,
              child: widget.word.text.xl4
                  .color(color)
                  .lineHeight(1.5)
                  .maxLines(2)
                  .size(context.isMobile ? 15  : 25).fontFamily("Sans")
                  // .bold
                  .make(),
            ),
          ),
        );
      },
    );
  }
}
