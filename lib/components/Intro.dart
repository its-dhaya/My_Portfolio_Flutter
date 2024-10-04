import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; // Import for URL launcher
import 'package:dhayanithi/constants.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  bool isHovered = false; // Track hover state
  Map<String, bool> isIconHovered = {}; // Track hover state for each icon

  // Method to launch the URL
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) => setState(() => isHovered = true),
                onExit: (_) => setState(() => isHovered = false),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.only(
                    top: 35,
                    bottom: 35,
                    left: 35,
                    right:
                        isHovered ? 200 : 90, // Increase padding on the right
                  ),
                  decoration: BoxDecoration(
                    color: isHovered ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Text(
                          'WELCOME TO MY PORTFOLIO!!',
                          style: TextStyle(
                            color: isHovered ? Colors.black : AppColor.white,
                            fontSize: 40,
                            fontFamily: 'Judson',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Text(
                          'I am',
                          style: TextStyle(
                            color: isHovered ? Colors.black : AppColor.white,
                            fontSize: 55,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Judson',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Text(
                          'DHAYANITHI',
                          style: TextStyle(
                            color: isHovered ? Colors.black : AppColor.white,
                            fontSize: 90,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Judson',
                            letterSpacing: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: '🧑‍💻 ',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 30,
                                ),
                              ),
                              TextSpan(
                                text: 'Flutter Developer',
                                style: TextStyle(
                                  color:
                                      isHovered ? Colors.black : AppColor.white,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Row(
                          children: [
                            // LinkedIn
                            MouseRegion(
                              onEnter: (_) => setState(
                                  () => isIconHovered['linkedin'] = true),
                              onExit: (_) => setState(
                                  () => isIconHovered['linkedin'] = false),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                padding: const EdgeInsets.all(
                                    10), // Adjust padding for size
                                decoration: BoxDecoration(
                                  color: isIconHovered['linkedin'] == true
                                      ? Colors.black
                                      : Colors.transparent,
                                  shape: BoxShape.circle, // Circular background
                                ),
                                child: GestureDetector(
                                  onTap: () => _launchUrl(
                                      'https://www.linkedin.com/in/dhayanithisr'),
                                  child: FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    color: isIconHovered['linkedin'] == true
                                        ? Colors.white
                                        : AppColor
                                            .white, // Icon color change on hover
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),

                            // GitHub
                            MouseRegion(
                              onEnter: (_) => setState(
                                  () => isIconHovered['github'] = true),
                              onExit: (_) => setState(
                                  () => isIconHovered['github'] = false),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                padding: const EdgeInsets.all(
                                    10), // Adjust padding for size
                                decoration: BoxDecoration(
                                  color: isIconHovered['github'] == true
                                      ? Colors.black
                                      : Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: GestureDetector(
                                  onTap: () => _launchUrl(
                                      'https://github.com/its-dhaya'),
                                  child: FaIcon(
                                    FontAwesomeIcons.github,
                                    color: isIconHovered['github'] == true
                                        ? Colors.white
                                        : AppColor.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),

                            // Figma
                            MouseRegion(
                              onEnter: (_) =>
                                  setState(() => isIconHovered['figma'] = true),
                              onExit: (_) => setState(
                                  () => isIconHovered['figma'] = false),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                padding: const EdgeInsets.all(
                                    10), // Adjust padding for size
                                decoration: BoxDecoration(
                                  color: isIconHovered['figma'] == true
                                      ? Colors.black
                                      : Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: GestureDetector(
                                  onTap: () => _launchUrl(
                                      'https://www.figma.com/files/team/1337789596594089491/drafts?fuid=1337789593886478175'),
                                  child: FaIcon(
                                    FontAwesomeIcons.figma,
                                    color: isIconHovered['figma'] == true
                                        ? Colors.white
                                        : AppColor.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),

                            // Instagram
                            MouseRegion(
                              onEnter: (_) => setState(
                                  () => isIconHovered['instagram'] = true),
                              onExit: (_) => setState(
                                  () => isIconHovered['instagram'] = false),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                padding: const EdgeInsets.all(
                                    10), // Adjust padding for size
                                decoration: BoxDecoration(
                                  color: isIconHovered['instagram'] == true
                                      ? Colors.black
                                      : Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: GestureDetector(
                                  onTap: () => _launchUrl(
                                      'https://www.instagram.com/dhaya_10/'),
                                  child: FaIcon(
                                    FontAwesomeIcons.instagram,
                                    color: isIconHovered['instagram'] == true
                                        ? Colors.white
                                        : AppColor.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/me.png',
                    width: 400,
                    height: 450,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Text(
            'Simplicity is the soul of efficiency',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Josefin',
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
