import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/Animations/portfolio_animation.dart';
import 'package:profile/constant.dart';

class PortfolioViewWeb extends StatefulWidget {
  const PortfolioViewWeb({Key? key}) : super(key: key);

  @override
  State<PortfolioViewWeb> createState() => _PortfolioViewWebState();
}

class _PortfolioViewWebState extends State<PortfolioViewWeb> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kBackground,
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 80),
            child: IntrinsicHeight(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width * 0.8,
                      alignment: Alignment.center,
                      child: Text(
                        'Portfolio',
                        style: GoogleFonts.bungee(
                          fontSize: 34,
                          color: kWhite,
                          wordSpacing: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Expanded(
                      child: AnimatedSkillDisplay(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
