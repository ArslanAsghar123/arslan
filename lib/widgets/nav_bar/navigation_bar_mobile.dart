import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "ARSLAN",
            style: GoogleFonts.bungee(
              height: 1,
              color: Colors.white,
              wordSpacing: 2,
              fontSize: 20,
            ),
          ),
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child:  Text(
              "HOME+",
              style: GoogleFonts.bungee(
                height: 1,
                color: Colors.white,
                wordSpacing: 2,
                fontSize: 20,
              ),
            ),
          ),
          // IconButton(
          //   icon: Icon(Icons.menu),
          //   highlightColor: Colors.teal,
          //   color: Colors.blue,
          //   iconSize: 35,
          //   onPressed: () {
          //     Scaffold.of(context).openDrawer();
          //   },
          // ),

          //NavBarLogo()
        ],
      ),
    );
  }
}
