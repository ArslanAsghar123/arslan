import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile/constant.dart';
import 'package:profile/views/homescreen/home_navigator.dart';

import 'package:profile/views/homescreen/homescreen_web.dart';

import '../views/about/about.dart';
import '../views/contact/contacts.dart';
import '../views/portfolio/portfolio.dart';
import '../views/projects/projects.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  if (kDebugMode) {
    print('generateRoute: ${settings.name}');
  }
  switch (settings.name) {
    case homeRoute:
      return MaterialPageRoute(builder: (_) => HomeScreenNavigator());
    case portfolioRoute:
      return MaterialPageRoute(builder: (_) => Portfolio());
    case projectRoute:
      return MaterialPageRoute(builder: (_) => Projects());
    case aboutRoute:
      return MaterialPageRoute(builder: (_) => About());
    case contactRoute:
      return MaterialPageRoute(builder: (_) => Contacts());
    // Validation of correct data type
    // If args is not of the correct type, return an error page.
    // You can also throw an exception while in development.
    default:
      // If there is no such named route in the switch statement, e.g. /third
      //return _errorRoute();
      return _getPageRoute(HomeScreenNavigator());

  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}


class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({required this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
  // static Route<dynamic> _errorRoute() {
  //   return MaterialPageRoute(builder: (_) {
  //     return Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Error'),
  //       ),
  //       body: const Center(
  //         child: Text('ERROR'),
  //       ),
  //     );
  //   });
  // }
}
