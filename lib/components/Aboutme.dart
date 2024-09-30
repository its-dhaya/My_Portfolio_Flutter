import 'package:dhayanithi/constants.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'About me',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Judson',
                  letterSpacing: 3,
                ),
              ),
              SizedBox(height: 20),

              // Apply consistent left padding of 100 for the rest of the content
              Padding(
                padding: const EdgeInsets.only(left: 100), // Consistent padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who am I?',
                      style: TextStyle(
                        fontSize: 35,
                        color: AppColor.orange,
                        fontFamily: 'Judson',
                      ),
                    ),
                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        "I'm Dhayanithi S R, a Flutter Developer, UI/UX and a Tech Enthusiast.\n"
                        "A final year Student of Computer Science and Engineering stream with a strong personal interest in Application Development. "
                        "Through self-learning, I’ve gained experience in building and deploying mobile and web apps. "
                        "I’ve worked on personal and team projects, focusing on creating innovative software solutions to solve real-world problems, "
                        "while staying updated on the latest tech trends.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Judson',
                          letterSpacing: 3,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: AppColor.white,
                      endIndent: 65,
                      thickness: 3,
                    ),
                    SizedBox(height: 20),

                    // Technologies section
                    Text(
                      'Technologies I know and have worked with:',
                      style: TextStyle(
                        fontSize: 35,
                        color: AppColor.orange,
                        fontFamily: 'Judson',
                      ),
                    ),
                    SizedBox(height: 10),

                    // Display technologies with images
                    Row(
                      children: [
                        _buildTechRow('Flutter'),
                        SizedBox(width: 10),
                        _buildTechRow('Dart'),
                        SizedBox(width: 10),
                        _buildTechRow('Java'),
                        SizedBox(width: 10),
                        _buildTechRow('Python'),
                        SizedBox(width: 10),
                        _buildTechRow('MySQL'),
                        SizedBox(width: 10),
                        _buildTechRow('Firebase'),
                        SizedBox(width: 10),
                        _buildTechRow('Android Studio'),
                        SizedBox(width: 10),
                        _buildTechRow('Vscode'),
                        SizedBox(width: 10),
                        _buildTechRow('Figma'),
                        SizedBox(width: 10),
                        _buildTechRow('Git and GitHub'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: AppColor.white,
                      endIndent: 65,
                      thickness: 3,
                    ),
                    SizedBox(height: 20),

                    // Additional information section
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 65.0), // Adjust as necessary
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Additionals:',
                                style: TextStyle(
                                    fontSize: 35,
                                    color: AppColor.orange,
                                    fontFamily: 'Judson'),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Text(
                                      'Surf in!!',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: 'Judson',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20), // Add some space
                                  Image.asset(
                                    'assets/Techs/greater.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                      width:
                                          20), // Space between '>' and button
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        backgroundColor: AppColor.orange,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        minimumSize: Size(150, 50)),
                                    onPressed: () {
                                      // Add resume button afunctionality here
                                    },
                                    child: Text(
                                      'My Resume',
                                      style: TextStyle(
                                          color: AppColor.black,
                                          fontFamily: 'Judson',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 400),
                            child: SizedBox(
                              height:
                                  100, // Adjust this value to control the height of the divider
                              child: VerticalDivider(
                                thickness: 3,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  'AGE : 20',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                'LOCATION : CHENNAI',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTechRow(String label) {
    return Row(
      children: [
        Image.asset('assets/Techs/techs.png',
            width: 20, height: 20), // Adjust size as needed
        SizedBox(width: 2),
        Text(
          label,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Judson',
              letterSpacing: 3),
        ),
      ],
    );
  }
}
