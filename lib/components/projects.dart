import 'package:dhayanithi/constants.dart';
import 'package:flutter/material.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  // List of project images and their GitHub links
  final List<Map<String, String>> projects = [
    {
      'image': 'assets/projects/project1.png',
      'link': 'https://github.com/yourusername/project1',
    },
    {
      'image': 'assets/projects/project2.png',
      'link': 'https://github.com/yourusername/project2',
    },
    {
      'image': 'assets/projects/project3.png',
      'link': 'https://github.com/yourusername/project3',
    },
    {
      'image': 'assets/projects/project4.png',
      'link': 'https://github.com/yourusername/project4',
    },
    // Add more projects as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Projects',
              style: TextStyle(
                fontSize: 50,
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontFamily: 'Judson',
                letterSpacing: 3,
              ),
            ),
            SizedBox(height: 20), // Space between title and grid
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Prevent scrolling
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 items per row
                childAspectRatio: 1, // Adjusted for square boxes
                crossAxisSpacing: 10, // Space between columns
                mainAxisSpacing: 10, // Space between rows
              ),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return ProjectCard(
                  image: projects[index]['image']!,
                  link: projects[index]['link']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String image;
  final String link;

  const ProjectCard({required this.image, required this.link, Key? key})
      : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _flipped = false;

  void _toggleFlip() {
    setState(() {
      _flipped = !_flipped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toggleFlip();
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _flipped
            ? Container(
                key: ValueKey<bool>(_flipped),
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Background color of the box
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.link, size: 40, color: Colors.blue),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        // Open the GitHub link
                        launchURL(widget.link);
                      },
                      child: Text(
                        'View on GitHub',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                key: ValueKey<bool>(_flipped),
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Background color of the box
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover, // Cover the whole box
                  ),
                ),
                width: 600, // Set the width of the image
                height: 400, // Set the height of the image
              ),
      ),
    );
  }

  void launchURL(String url) {
    // You can use the url_launcher package to open URLs
    // Make sure to add url_launcher to your pubspec.yaml
    // import 'package:url_launcher/url_launcher.dart';

    // final Uri _url = Uri.parse(url);
    // launchUrl(_url);
  }
}
