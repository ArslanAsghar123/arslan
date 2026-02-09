import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectViewMobile extends StatefulWidget {
  const ProjectViewMobile({Key? key}) : super(key: key);

  @override
  State<ProjectViewMobile> createState() => _ProjectViewMobileState();
}

class _ProjectViewMobileState extends State<ProjectViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.black,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "My Projects",
                      style: GoogleFonts.montserrat(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: 60,
                      height: 3,
                      color: const Color(0xff0365ff),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Work from the past 2 years",
                      style: GoogleFonts.comfortaa(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Projects
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _buildProjectCard(
                    "E-Wallet App",
                    "Complete e-wallet solution for managing digital payments and cards",
                    "assets/e-wallet.png",
                    const Color(0xff0365ff),
                  ),
                  const SizedBox(height: 20),
                  _buildProjectCard(
                    "Uber Clone",
                    "Real-time ride-sharing app with live tracking and notifications",
                    "assets/uber_clone.png",
                    const Color(0xff00D9FF),
                  ),
                  const SizedBox(height: 20),
                  _buildProjectCard(
                    "Instagram Clone",
                    "Social media app with Firebase and real-time updates",
                    "assets/e-commerce.png",
                    const Color(0xffE1306C),
                  ),
                  const SizedBox(height: 20),
                  _buildProjectCard(
                    "Mazdoori App",
                    "Platform to hire daily workers with fixed pricing",
                    "assets/app.jpg",
                    const Color(0xff4CAF50),
                  ),
                ],
              ),
            ),

            // CTA
            Container(
              color: const Color(0xff0365ff),
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Text(
                    "Interested in working together?",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "LET'S TALK",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: const Color(0xff0365ff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(30),
              child: const Center(
                child: Text(
                  "Arslan | 2022",
                  style: TextStyle(
                    fontSize: 14,
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

  Widget _buildProjectCard(
      String title, String description, String imagePath, Color accentColor) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 3,
                  color: accentColor,
                ),
                const SizedBox(height: 15),
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: GoogleFonts.comfortaa(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "VIEW MORE",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
