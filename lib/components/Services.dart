import 'package:flutter/material.dart';
import 'package:dhayanithi/constants.dart'; // Import your constants file

class SkillsService extends StatefulWidget {
  @override
  _SkillsServiceState createState() => _SkillsServiceState();
}

class _SkillsServiceState extends State<SkillsService> {
  // Track the hovered index
  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What I can do?',
              style: TextStyle(
                fontSize: 50,
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontFamily: 'Judson',
                letterSpacing: 3,
              ),
            ),
            SizedBox(
                height: 30), // Add some space between the title and the boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSkillBox(
                  'assets/services/mobiledev.png',
                  title: 'Mobile App Development',
                  index: 0,
                ),
                _buildSkillBox(
                  'assets/services/uiux.png',
                  title: 'UI/UX Design',
                  index: 1,
                ),
                _buildSkillBox(
                  'assets/services/git.png',
                  title: 'Git & Open Source',
                  index: 2,
                ),
              ],
            ),
            SizedBox(height: 40), // Add some space below the boxes
            Divider(
              color: AppColor.white,
              thickness: 3, // Match thickness with AboutMe
              endIndent: 90, // Match end indent with AboutMe
              indent: 90, // Match indent with AboutMe
            ),
            SizedBox(
                height: 20), // Add more space below the divider if necessary
          ],
        ),
      ),
    );
  }

  // A reusable method to create each skill box with hover animation and orange glow
  Widget _buildSkillBox(String imagePath,
      {required String title, required int index}) {
    bool isHovered = hoveredIndex == index;

    return MouseRegion(
      onEnter: (_) => setState(() => hoveredIndex = index),
      onExit: (_) => setState(() => hoveredIndex = null),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: isHovered ? 400 : 370, // Scale up the box when hovered
        height: isHovered ? 220 : 200,
        decoration: BoxDecoration(
          color: AppColor.grey, // Box background color
          borderRadius: BorderRadius.circular(20), // Rounded corners
          border: Border.all(
            color: isHovered
                ? AppColor.orange
                : AppColor.white, // Border color change on hover
            width: 2,
          ),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color:
                        AppColor.orange.withOpacity(0.7), // Orange glow effect
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ]
              : [], // Add glow on hover
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10), // Space between image and text
            Text(
              title,
              style: TextStyle(
                color: AppColor.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'Judson',
                letterSpacing: 3,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
