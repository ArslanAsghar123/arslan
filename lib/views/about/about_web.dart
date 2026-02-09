import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/constant.dart';

class AboutViewWeb extends StatefulWidget {
  const AboutViewWeb({Key? key}) : super(key: key);

  @override
  State<AboutViewWeb> createState() => _AboutViewWebState();
}

class _AboutViewWebState extends State<AboutViewWeb> {
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
                      "ABOUT",
                      style: TextStyle(
                        fontSize: 200,
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
                          "About Me",
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
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Content Section
            Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(vertical: 80, horizontal: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left side - Image
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/app.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 60),
                  // Right side - Content
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Developer",
                          style: GoogleFonts.montserrat(
                            fontSize: 36,
                            color: const Color(0xff0365ff),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Hi! I'm Arslan Asghar, a passionate Flutter developer from Pakistan. "
                          "I specialize in creating beautiful, high-performance mobile and web applications "
                          "using Flutter and Dart.",
                          style: GoogleFonts.comfortaa(
                            fontSize: 18,
                            color: Colors.black87,
                            height: 1.8,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "What I Do",
                          style: GoogleFonts.montserrat(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        _buildSkillItem(
                            "📱 Mobile App Development (iOS & Android)"),
                        _buildSkillItem("🌐 Web Application Development"),
                        _buildSkillItem("🔥 Firebase Integration"),
                        _buildSkillItem("🎨 UI/UX Implementation"),
                        _buildSkillItem(
                            "⚡ State Management (Provider, Bloc, GetX)"),
                        _buildSkillItem("🔌 REST API Integration"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Skills Section
            Container(
              color: const Color(0xfff5f5f5),
              padding:
                  const EdgeInsets.symmetric(vertical: 80, horizontal: 100),
              child: Column(
                children: [
                  Text(
                    "Technical Skills",
                    style: GoogleFonts.montserrat(
                      fontSize: 42,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Wrap(
                    spacing: 30,
                    runSpacing: 30,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildTechCard("Flutter", Icons.flutter_dash,
                          const Color(0xff02569B)),
                      _buildTechCard(
                          "Dart", Icons.code, const Color(0xff0175C2)),
                      _buildTechCard("Firebase", Icons.local_fire_department,
                          const Color(0xffFFA000)),
                      _buildTechCard(
                          "REST API", Icons.api, const Color(0xff4CAF50)),
                      _buildTechCard(
                          "Git", Icons.source, const Color(0xffF05032)),
                      _buildTechCard("UI/UX", Icons.design_services,
                          const Color(0xff9C27B0)),
                    ],
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

  Widget _buildSkillItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: GoogleFonts.comfortaa(
          fontSize: 16,
          color: Colors.black87,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildTechCard(String title, IconData icon, Color color) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: color),
          const SizedBox(height: 15),
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
