import 'package:dhayanithi/components/Resume.dart';
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
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Judson',
                  letterSpacing: 3,
                ),
              ),
              SizedBox(height: 20),
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
                    Text(
                      'Technologies I know and have worked with:',
                      style: TextStyle(
                        fontSize: 35,
                        color: AppColor.orange,
                        fontFamily: 'Judson',
                      ),
                    ),
                    SizedBox(height: 10),
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
                    Padding(
                      padding: const EdgeInsets.only(right: 65.0),
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
                                  fontFamily: 'Judson',
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    'Surf in!!',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Judson',
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Image.asset(
                                    'assets/Techs/greater.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(width: 20),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: AppColor.orange,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      minimumSize: Size(150, 50),
                                    ),
                                    onPressed: () {
                                      ResumeButton();
                                    },
                                    child: Text(
                                      'My Resume',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontFamily: 'Judson',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                            child: VerticalDivider(
                              thickness: 3,
                              color: AppColor.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'AGE : ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Judson',
                                    ),
                                  ),
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Judson',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'LOCATION : ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Judson',
                                    ),
                                  ),
                                  Text(
                                    'CHENNAI',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Judson',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      endIndent: 65,
                      color: AppColor.white,
                      thickness: 3,
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
        Image.asset(
          'assets/Techs/techs.png',
          width: 20,
          height: 20,
        ),
        SizedBox(width: 2),
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Judson',
            letterSpacing: 3,
          ),
        ),
      ],
    );
  }
}
