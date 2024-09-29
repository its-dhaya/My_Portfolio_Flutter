import 'package:flutter/material.dart';
import 'package:dhayanithi/components/Intro.dart';
import 'package:dhayanithi/components/Navbarpage.dart';
import 'package:dhayanithi/components/AboutMe.dart'; // Import AboutMe page
import 'package:dhayanithi/constants.dart';

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
          ],
        ),
      ),
    );
  }
}
