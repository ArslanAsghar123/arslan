import 'package:flutter/material.dart';
import 'package:profile/constant.dart';
import 'package:profile/locator.dart';
import 'package:profile/routes/generate_route.dart';
import 'package:profile/routes/navigation_service.dart';
import 'package:profile/views/navigation.dart';
import 'package:profile/widgets/nav_drawer/navigation_drawer.dart' as custom;
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: (sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile ||
                sizingInformation.deviceScreenType == DeviceScreenType.tablet)
            ? const custom.CustomNavigationDrawer()
            : null,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(children: <Widget>[
              const HomeNavigation(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: homeRoute,
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
