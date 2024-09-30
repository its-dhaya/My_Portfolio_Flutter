import 'package:dhayanithi/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  bool isHovered = false; // Track hover state

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
                            FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: isHovered ? Colors.black : AppColor.white,
                              size: 40,
                            ),
                            const SizedBox(width: 50),
                            FaIcon(
                              FontAwesomeIcons.github,
                              color: isHovered ? Colors.black : AppColor.white,
                              size: 40,
                            ),
                            const SizedBox(width: 50),
                            FaIcon(
                              FontAwesomeIcons.figma,
                              color: isHovered ? Colors.black : AppColor.white,
                              size: 40,
                            ),
                            const SizedBox(width: 50),
                            FaIcon(
                              FontAwesomeIcons.instagram,
                              color: isHovered ? Colors.black : AppColor.white,
                              size: 40,
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
                letterSpacing: 8),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
