import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/model/portfolio.dart';

// Colors
const Color primaryColor = Color(0xff252733);
const Color secondaryColor = Color(0xff333645);
const Color background = Color(0xff36454F);
const Color textPrimary = Colors.white;
const Color textSecondary = Colors.white;

// Text Styles
TextStyle headlineTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        fontSize: 26,
        color: textPrimary,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w300));

TextStyle buttonTextStyle = GoogleFonts.montserrat(
    textStyle:
        const TextStyle(fontSize: 15, color: textPrimary, letterSpacing: 1));

// Button Style
ButtonStyle? menuButtonStyle = TextButton.styleFrom(
    foregroundColor: textSecondary,
    splashFactory: NoSplash.splashFactory,
    disabledForegroundColor: Colors.grey.withOpacity(0.38),
    backgroundColor: Colors.transparent,
    textStyle: buttonTextStyle,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16));

List<Color> kColors = [
  Colors.deepOrangeAccent,
  Colors.orangeAccent,
  Colors.pinkAccent,
  Colors.redAccent,
  Colors.blueAccent,
  Colors.indigoAccent,
  Colors.lightBlueAccent,
  Colors.purpleAccent,
];
// Color kWhite = Color(0xffd3d4d4);
Color kWhite = Colors.white;
Color kDarkWhite = const Color(0xff787a7b);
// Color kBackground = Color(0xff212324);
// Color kCardBackground = Color(0xff18191A);

Color kBackground = const Color(0xff141414);
Color kCardBackground = const Color(0xaa202020);
Color kBackgroundAccent = const Color(0xff181818);

Color kDeepBlue = const Color(0xff4F46E5);
Color kPink = const Color(0xff0365ff);
Color kPinkAccent = Colors.pinkAccent;

const String homeRoute = 'Home';
const String aboutRoute = 'About';
const String portfolioRoute = 'Portfolio';
const String projectRoute = "Project";
const String contactRoute = "Contact";
const String homeWebRoute = "WebHome";

class NavigatorKeys {
  static final GlobalKey<NavigatorState> homeNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: "HomeNavigatorKey");
  static final GlobalKey<NavigatorState> portfolioNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: "PortfolioNavigatorKey");
  static final GlobalKey<NavigatorState> projectsNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: "ProjectsNavigatorKey");
  static final GlobalKey<NavigatorState> aboutNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: "AboutNavigatorKey");
  static final GlobalKey<NavigatorState> contactNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: "ContactNavigatorKey");
}

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData mediamodifierDesign1 =
      IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

Map<String, Skill> kSkills = {
  'Python': Skill(
    title: [
      'The Joy of Computing using Python',
    ],
    subheading: [
      'By NPTEL',
    ],
    body: [
      'Offered by IIT Ropar. A introductory course for learning python.',
    ],
    buttonText: [
      'View Certificate',
    ],
    links: [''],
  ),
  'HTML': Skill(
    title: [
      'HTML, CSS and JavaScript',
      'Fantasy Premier League ',
    ],
    subheading: [
      'By Udemy',
      'Project',
    ],
    body: [
      'Offered by Jonas Schmedtmann. Build Responsive Real-World Websites with HTML and CSS',
      'Fantasy Premier League fan made ui',
    ],
    buttonText: [
      'View Certificate',
      'View Website',
    ],
    links: ['', ''],
  ),
  'C++': Skill(
    title: [
      'Algorithmic Toolbox',
    ],
    subheading: [
      'By Coursera',
    ],
    body: [
      'The course covers basic algorithmic techniques and ideas for computational problems arising frequently in practical applications: sorting and searching, divide and conquer, greedy algorithms, dynamic programming.',
    ],
    buttonText: [
      'View Certificate',
    ],
    links: [''],
  ),
  'JavaScript': Skill(
    title: [
      'HTML, CSS and JavaScript for Web Developer',
      'Programmer Clock',
    ],
    subheading: [
      'By Coursera',
      'Project',
    ],
    body: [
      'Offered by Johns Hopkins University. A introductory course for web development.',
      'Programmer Clock is a clock with weather forecast.',
    ],
    buttonText: [
      'View Certificate',
      'View Website',
    ],
    links: ['', 'https://github.com/Yogeshk4124/Programmer-Clock'],
  ),
  'CSS': Skill(
    title: [
      'HTML, CSS and JavaScript',
      'Fantasy Premier League ',
    ],
    subheading: [
      'By Udemy',
      'Project',
    ],
    body: [
      'Offered by Jonas Schmedtmann. Build Responsive Real-World Websites with HTML and CSS',
      'Fantasy Premier League fan made ui',
    ],
    buttonText: [
      'View Certificate',
      'View Website',
    ],
    links: ['', ''],
  ),
  'Flutter': Skill(
    title: [
      'CrewApp 2.0',
      'E-Wallet',
      'Uber clone',
      'Mazdoori app',
      'Instagram Clone',
      'Weather App',
    ],
    subheading: [
      'Core project',
      'online payment clone',
      'real_time Uber clone',
      'app to hire daily life workers',
      'Learning Project',
      'Learning Project',
    ],
    body: [
      'train and buses drivers app',
      'A simple app for managing our day-to-day life money like bank cards, business cards, organization cards, etc. and buy grocery bills etc from wallet',
      'complete uber_clone app for riders and drivers with push_notification',
      'app to hire labours with fixed amount e.g plumber,electrician',
      'instagram clone with firebase and streambuilder',
      'Weather forecast sample app',
    ],
    buttonText: [
      'View More',
      'View More',
      'View More',
      'View More',
      'View More',
      'View More',
    ],
    links: [
      '',
      'https://github.com/ArslanAsghar123/E_Wallet',
      'https://www.linkedin.com/posts/arslan-asghar-flutter-expert%F0%9F%AA%84-3b9b38162_animation-github-database-activity-6885239995200892928-kc_j?utm_source=linkedin_share&utm_medium=member_desktop_web',
      '',
      'https://github.com/ArslanAsghar123/SocialApp_Clone',
      'https://github.com/Yogeshk4124/weather-app'
    ],
  ),
  'Android': Skill(
    title: [
      'ChatterBox Translator',
    ],
    subheading: [
      'Project',
    ],
    body: [
      'Chatter Box is an android app that is capable of Voice, Text, Image Text Translation, and end-to-end chat translation.',
    ],
    buttonText: [
      'View More',
    ],
    links: ['https://github.com/Yogeshk4124/Chatter-Box-Translator'],
  ),
};
