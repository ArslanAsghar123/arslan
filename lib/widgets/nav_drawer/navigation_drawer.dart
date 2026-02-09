import 'package:flutter/material.dart';
import 'package:profile/constant.dart';
import 'package:profile/responsive_builder.dart';
import 'components/drawer_item.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveBuilderr.isTablet(context)
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(0), right: Radius.circular(16)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color(0xFF7A7A7A),
            // Color(0xFF616161),
            // Color(0xFF4A4A4A).withOpacity(0.95),
            // Color(0xFF333333).withOpacity(0.95),
            Color(0xFF1E1E1E).withOpacity(0.95),
            Color(0xFF050505).withOpacity(0.95),
          ],
        ),
      ),
      child: Column(
        children: const [
          // NavigationDrawerHeader(),
          DrawerItem('Home', Icons.home, homeRoute),
          DrawerItem('Portfolio', Icons.bar_chart, portfolioRoute),
          DrawerItem('Projects', Icons.palette, projectRoute),
          DrawerItem('About', Icons.person, aboutRoute),
          DrawerItem('Contact', Icons.mail, contactRoute),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.08,
          // // ),
          // Spacer(),
          // Center(child: NavigationDrawerFooter()),
        ],
      ),
    );
  }
}
