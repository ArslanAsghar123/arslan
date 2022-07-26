import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/routes/navigation_service.dart';

import '../../locator.dart';

class NavBarItemMobile extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItemMobile(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
        Navigator.of(context).pop();
      },
      child: Text(
        title,
        style: GoogleFonts.rajdhani(
            fontSize: 18, color: const Color(0xffCCD6F6).withOpacity(0.9)),
      ),
    );
  }
}
