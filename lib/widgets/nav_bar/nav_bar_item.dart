import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:profile/locator.dart';
import 'package:profile/routes/navigation_service.dart';

import '../../../constant.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
//        Navigator.of(context).pop();
        },
        child: Text(
          title,
          style: GoogleFonts.bungee(
              textStyle: const TextStyle(
                  fontSize: 15, color: textPrimary, letterSpacing: 1)),
        ),
      ),
    );
  }
}
