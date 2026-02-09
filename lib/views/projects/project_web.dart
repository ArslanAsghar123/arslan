import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/constant.dart';

class ProjectViewWeb extends StatefulWidget {
  const ProjectViewWeb({Key? key}) : super(key: key);

  @override
  State<ProjectViewWeb> createState() => _ProjectViewWebState();
}

class _ProjectViewWebState extends State<ProjectViewWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      "PROJECTS",
                      style: TextStyle(
                        fontSize: 180,
                        fontFamily: "SansOutline",
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My Projects",
                          style: GoogleFonts.montserrat(
                            fontSize: 60,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 100,
                          height: 4,
                          color: const Color(0xff0365ff),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Work that I've done for the past 2 years",
                          style: GoogleFonts.comfortaa(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Projects Grid
            Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(vertical: 80, horizontal: 100),
              child: Column(
                children: [
                  _buildProjectRow(
                    context,
                    "E-Wallet App",
                    "A complete e-wallet solution for managing digital payments, bank cards, business cards, and grocery bills. Built with Flutter and Firebase.",
                    "assets/e-wallet.png",
                    const Color(0xff0365ff),
                    false,
                  ),
                  const SizedBox(height: 60),
                  _buildProjectRow(
                    context,
                    "Uber Clone",
                    "Real-time ride-sharing application for riders and drivers with push notifications, live tracking, and payment integration.",
                    "assets/uber_clone.png",
                    const Color(0xff00D9FF),
                    true,
                  ),
                  const SizedBox(height: 60),
                  _buildProjectRow(
                    context,
                    "Instagram Clone",
                    "Social media application with Firebase backend, StreamBuilder for real-time updates, and beautiful UI implementation.",
                    "assets/e-commerce.png",
                    const Color(0xffE1306C),
                    false,
                  ),
                  const SizedBox(height: 60),
                  _buildProjectRow(
                    context,
                    "Mazdoori App",
                    "Platform to hire daily life workers like plumbers and electricians with fixed pricing and easy booking system.",
                    "assets/app.jpg",
                    const Color(0xff4CAF50),
                    true,
                  ),
                ],
              ),
            ),

            // Technologies Section
            Container(
              color: const Color(0xfff5f5f5),
              padding:
                  const EdgeInsets.symmetric(vertical: 80, horizontal: 100),
              child: Column(
                children: [
                  Text(
                    "Technologies Used",
                    style: GoogleFonts.montserrat(
                      fontSize: 42,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Wrap(
                    spacing: 40,
                    runSpacing: 40,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildTechBadge("Flutter"),
                      _buildTechBadge("Dart"),
                      _buildTechBadge("Firebase"),
                      _buildTechBadge("REST APIs"),
                      _buildTechBadge("Provider"),
                      _buildTechBadge("Bloc"),
                      _buildTechBadge("GetX"),
                      _buildTechBadge("Hive"),
                      _buildTechBadge("SQLite"),
                      _buildTechBadge("Google Maps"),
                    ],
                  ),
                ],
              ),
            ),

            // CTA Section
            Container(
              color: const Color(0xff0365ff),
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Column(
                children: [
                  Text(
                    "Interested in working together?",
                    style: GoogleFonts.montserrat(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "LET'S TALK",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: const Color(0xff0365ff),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.15,
              child: const Center(
                child: Text(
                  "Arslan | 2022",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Sans",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectRow(
    BuildContext context,
    String title,
    String description,
    String imagePath,
    Color accentColor,
    bool imageOnRight,
  ) {
    final imageWidget = Expanded(
      flex: 1,
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: accentColor.withOpacity(0.3),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
      ),
    );

    final contentWidget = Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 4,
              color: accentColor,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 36,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: GoogleFonts.comfortaa(
                fontSize: 16,
                color: Colors.black87,
                height: 1.8,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "VIEW MORE",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Row(
      children: imageOnRight
          ? [contentWidget, const SizedBox(width: 20), imageWidget]
          : [imageWidget, const SizedBox(width: 20), contentWidget],
    );
  }

  Widget _buildTechBadge(String tech) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: const Color(0xff0365ff), width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Text(
        tech,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          color: const Color(0xff0365ff),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
