import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/constant.dart';
import 'package:profile/extensions/hover_extension.dart';
import 'package:profile/locator.dart';
import 'package:profile/routes/navigation_service.dart';
import 'package:profile/widgets/nav_bar/nav_bar_item.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  locator<NavigationService>().navigateTo(homeRoute);
                },
                child:  Text(
                  "ARSLAN",
                  style: GoogleFonts.bungee(
                    height: 1,
                    color: Colors.white,
                    wordSpacing: 2,
                    fontSize: 30,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const NavBarItem('Home', homeRoute).moveUpOnHover,
                  const SizedBox(
                    width: 50,
                  ),
                  const NavBarItem('Portfolio', portfolioRoute).moveUpOnHover,
                  const SizedBox(
                    width: 50,
                  ),

                  const NavBarItem('Projects', projectRoute).moveUpOnHover,
                  const SizedBox(
                    width: 50,
                  ),
                  const NavBarItem('About', aboutRoute).moveUpOnHover,
                  const SizedBox(
                    width: 50,
                  ),
                  const NavBarItem('Contact', contactRoute).moveUpOnHover,
                ],
              )
            ]),
      ),
    );
  }
}

