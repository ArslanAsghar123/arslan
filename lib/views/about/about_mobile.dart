import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutViewMobile extends StatefulWidget {
  const AboutViewMobile({Key? key}) : super(key: key);

  @override
  State<AboutViewMobile> createState() => _AboutViewMobileState();
}

class _AboutViewMobileState extends State<AboutViewMobile> {
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
                      "About Me",
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
                  ],
                ),
              ),
            ),

            // Content
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/app.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Flutter Developer",
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: const Color(0xff0365ff),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Hi! I'm Arslan Asghar, a passionate Flutter developer from Pakistan. "
                    "I specialize in creating beautiful, high-performance mobile and web applications.",
                    style: GoogleFonts.comfortaa(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "What I Do",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  _buildSkillItem("📱 Mobile App Development"),
                  _buildSkillItem("🌐 Web Development"),
                  _buildSkillItem("🔥 Firebase Integration"),
                  _buildSkillItem("🎨 UI/UX Implementation"),
                  _buildSkillItem("⚡ State Management"),
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

  Widget _buildSkillItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: GoogleFonts.comfortaa(
          fontSize: 14,
          color: Colors.black87,
        ),
      ),
    );
  }
}
