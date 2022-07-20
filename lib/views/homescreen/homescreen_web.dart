import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/Animations/FadeAnimation.dart';
import 'package:profile/Animations/latter.dart';
import 'package:profile/constant.dart';
import 'package:profile/responsive_builder.dart';
import 'package:profile/views/homescreen/components/intro_content.dart';
import 'package:profile/widgets/nav_bar/nav_bar_web.dart';
import 'package:profile/extensions/hover_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/bulb.png",
                            height: MediaQuery.of(context).size.height * 0.6,
                          )),
                        ],
                      ),
                      const FlutterIntroContent(),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xff0365ff),
                  height: MediaQuery.of(context).size.height * 0.47,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          transform: Matrix4.translationValues(0.0, -70.0, 0.0),
                          child: Text(
                            "Why Me?".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 200,
                                fontFamily: "SansOutline",
                                color: Colors.black12),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          transform:
                              Matrix4.translationValues(-150.0, 40.0, 0.0),
                          child: Text(
                            """
                               " Team player with good communication skills and a fast 
                               learner Highly adaptable.Documentation devotee and 
                               supporter of effective knowledge sharing.Help others 
                               to strive for clarity and readability and conform to 
                               clean code standards "
                               """,
                            style: GoogleFonts.comfortaa(
                                textStyle: const TextStyle(
                                    fontSize: 35,
                                    color: textPrimary,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        "Pro".toUpperCase(),
                                        style: const TextStyle(
                                          fontSize: 130,
                                          fontFamily: "SansOutline",
                                          color: Color(0xff0365ff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -50.0, 0.0),
                                      child: Text(
                                        "ject".toUpperCase(),
                                        style: const TextStyle(
                                          fontSize: 140,
                                          fontFamily: "SansOutline",
                                          color: Color(0xff0365ff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -190.0, -10.0, 0.0),
                                      child: Center(
                                        child: Text(
                                          """
                                   Work that i've
                                   done for the
                                   past 2 year's
                                   """,
                                          style: GoogleFonts.comfortaa(
                                              textStyle: const TextStyle(
                                                  fontSize: 35,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/uber_clone.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xffe5e9ec),
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/e-wallet.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/e-commerce.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/github.png",
                        color: Colors.white,
                        height: 100,
                      ),
                      Image.asset(
                        "assets/linkedin.png",
                        color: Colors.white,
                        height: 100,
                      ),
                      Image.asset(
                        "assets/twitter.png",
                        color: Colors.white,
                        height: 100,
                      ),
                      Image.asset(
                        "assets/slack.png",
                        color: Colors.white,
                        height: 100,
                      ),
                      Image.asset(
                        "assets/medium.png",
                        color: Colors.white,
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Interest in work with me? ",
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Sans",
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: 54,
                        decoration: BoxDecoration(
                            color: Color(0xff0365ff),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "Let's Talk".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: "Sans",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 1,
                  child: const Center(
                    child: Text(
                      "Arslan | 2022",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Sans",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

