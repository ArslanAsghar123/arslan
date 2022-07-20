import 'package:flutter/material.dart';
import 'package:profile/views/portfolio/portfolio_mobile.dart';
import 'package:profile/views/portfolio/portfolio_web.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const PortfolioViewWeb(),
      mobile: const PortfolioViewMobile(),
      tablet: const PortfolioViewMobile(),
    );
  }
}
