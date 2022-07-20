import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/constant.dart';
import 'package:profile/responsive_builder.dart';
import 'package:profile/views/homescreen/components/intro_content.dart';
import 'package:profile/views/homescreen/components/text_content.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Container(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                            right: MediaQuery.of(context).size.width * 0.1),
                        child: FlutterIntroContent()),
                  ),
                  Container(
                    color: const Color(0xff0365ff),
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Why Me?".toUpperCase(),
                            style: TextStyle(
                                fontSize: ResponsiveBuilderr.isTablet(context)
                                    ? 100
                                    : 60,
                                fontFamily: "SansOutline",
                                color: Colors.white),
                          ),
                        ),
                        const Introduction(),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 1,
                    color: Colors.white,
                    child: Center(
                      child: Container(
                          child: Text(
                        "Projects".toUpperCase(),
                        style: TextStyle(
                          fontSize:
                              ResponsiveBuilderr.isTablet(context) ? 90 : 50,
                          fontFamily: "SansOutline",
                          color: Color(0xff0365ff),
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: ResponsiveBuilderr.isTablet(context)
                        ? MediaQuery.of(context).size.height * 0.70
                        : MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 1,
                    color: Colors.white,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/uber_clone.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    height: ResponsiveBuilderr.isTablet(context)
                        ? MediaQuery.of(context).size.height * 0.70
                        : MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 1,
                    color: const Color(0xffe5e9ec),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/e-wallet.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    height: ResponsiveBuilderr.isTablet(context)
                        ? MediaQuery.of(context).size.height * 0.70
                        : MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 1,
                    color: const Color(0xffe5e9ec),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/e-commerce.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/github.png",
                          color: Colors.white,
                          height: 60,
                        ),
                        Image.asset(
                          "assets/linkedin.png",
                          color: Colors.white,
                          height: 60,
                        ),
                        Image.asset(
                          "assets/twitter.png",
                          color: Colors.white,
                          height: 60,
                        ),
                        Image.asset(
                          "assets/slack.png",
                          color: Colors.white,
                          height: 60,
                        ),
                        Image.asset(
                          "assets/medium.png",
                          color: Colors.white,
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Text(
                          "Interested in working with me? ",
                          style: TextStyle(
                            fontSize: ResponsiveBuilderr.isTablet(context)?30:20,
                            fontFamily: "Sans",
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: ResponsiveBuilderr.isTablet(context)?MediaQuery.of(context).size.width * 0.2:MediaQuery.of(context).size.width * 0.35,
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

          )
        ],
      ),
    );
  }
}
