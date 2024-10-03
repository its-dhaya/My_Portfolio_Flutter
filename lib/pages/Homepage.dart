import 'package:dhayanithi/components/Services.dart';
import 'package:dhayanithi/components/projects.dart';
import 'package:flutter/material.dart';
import 'package:dhayanithi/components/Intro.dart';
import 'package:dhayanithi/components/Navbarpage.dart';
import 'package:dhayanithi/components/AboutMe.dart'; // Import AboutMe page
import 'package:dhayanithi/constants.dart'; // Import your MyProjects widget
import 'package:dhayanithi/components/ContactSection.dart'; // Import your ContactSection

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SingleChildScrollView(
        // Add scrolling functionality
        child: Column(
          children: [
            Navbar(),
            SizedBox(height: 60),
            Intro(),
            SizedBox(height: 60), // Add spacing if needed
            AboutMe(),
            SizedBox(height: 20),
            SkillsService(),
            MyProjects(), // Add your MyProjects widget here // Add spacing before contact section
            ContactSection(), // Add the ContactSection widget here
          ],
        ),
      ),
    );
  }
}
