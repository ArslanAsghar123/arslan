import 'package:flutter/material.dart';
import 'drawer_logo.dart';

class NavigationDrawerHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            // Color(0xFF7A7A7A),
            // Color(0xFF616161),
            Color(0xFF3D3D3D).withOpacity(0),
            Color(0xFF333333).withOpacity(0),
          ],
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //DrawerLogo(),
        ],
      ),
    );
  }
}
