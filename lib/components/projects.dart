import 'package:flutter/material.dart';
import 'package:dhayanithi/constants.dart'; // Import your constants file
import 'package:url_launcher/url_launcher.dart'; // Make sure to add this for launching URLs

class MyProjects extends StatefulWidget {
  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  // This will track whether the project box is hovered or not
  bool _isHovered1 = false;
  bool _isHovered2 = false;
  bool _isHovered3 = false;
  bool _isHovered4 = false;

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
              'My Projects',
              style: TextStyle(
                fontSize: 50,
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontFamily: 'Judson',
                letterSpacing: 3,
              ),
            ),
            SizedBox(
                height: 30), // Add space between the title and the projects
            // First row with 2 images
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildProjectBox(
                  'assets/projects/project1.png',
                  'https://github.com/its-dhaya/flutter_ChattingApplication',
                  1,
                ),
                _buildProjectBox(
                  'assets/projects/project2.png',
                  'https://github.com/its-dhaya/Flutter_ExpenseTracker',
                  2,
                ),
              ],
            ),
            SizedBox(height: 30), // Add space between rows
            // Second row with 2 images
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildProjectBox(
                  'assets/projects/project3.png',
                  'https://github.com/its-dhaya/flutter_todo',
                  3,
                ),
                _buildProjectBox(
                  'assets/projects/project4.png',
                  'https://github.com/its-dhaya/BillDashBoard',
                  4,
                ),
              ],
            ),
            SizedBox(height: 40), // Add space below the projects
            // See more button
            TextButton(
              onPressed: () async {
                const url =
                    'https://github.com/its-dhaya?tab=repositories'; // Add your GitHub profile link
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                'See More',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: AppColor.white,
              thickness: 3,
              endIndent: 90,
              indent: 90,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // A reusable method to create each project box with hover effect
  Widget _buildProjectBox(String imagePath, String url, int index) {
    return MouseRegion(
      cursor: SystemMouseCursors
          .click, // Change the cursor to a pointer when hovering
      onEnter: (_) {
        setState(() {
          if (index == 1) _isHovered1 = true;
          if (index == 2) _isHovered2 = true;
          if (index == 3) _isHovered3 = true;
          if (index == 4) _isHovered4 = true;
        });
      },
      onExit: (_) {
        setState(() {
          if (index == 1) _isHovered1 = false;
          if (index == 2) _isHovered2 = false;
          if (index == 3) _isHovered3 = false;
          if (index == 4) _isHovered4 = false;
        });
      },
      child: GestureDetector(
        onTap: () async {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: 650, // Fixed size for the box
              height: 350, // Fixed size for the box
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColor.white,
                  width: 2,
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover, // Make the image fill the entire box
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  // Shutter effect with "Source" text
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 300),
                    bottom: _isHovered1 && index == 1
                        ? 0
                        : _isHovered2 && index == 2
                            ? 0
                            : _isHovered3 && index == 3
                                ? 0
                                : _isHovered4 && index == 4
                                    ? 0
                                    : -50, // Hide shutter by moving it out of view
                    child: Container(
                      width: 650,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColor.orange.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(
                            23), // Add this to curve the container
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Source',
                            style: TextStyle(
                              color: AppColor.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Judson',
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward,
                            color: AppColor.black,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
