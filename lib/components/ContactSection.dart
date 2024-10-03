import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dhayanithi/constants.dart'; // Assuming AppColor is defined here

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        const Text(
          'Get in touch',
          style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontFamily: 'Judson',
              letterSpacing: 3),
        ),
        const SizedBox(height: 10),
        Padding(
          padding:
              const EdgeInsets.only(left: 180.0), // Padding to move text right
          child: const Text(
            "Let's build something together",
            style: TextStyle(
              color: AppColor.orange,
              fontSize: 25,
              fontFamily: 'Judson',
            ),
          ),
        ),
        const SizedBox(height: 40),
        // Set the height for the section
        Container(
          height: 300, // Adjust this value to increase or decrease the height
          width: double.infinity, // Full width of the screen
          decoration: BoxDecoration(
            color: AppColor.grey,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ), // Apply grey color using BoxDecoration
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ContactCard(
                      icon: Icons.home,
                      label: 'CHENNAI, INDIA',
                    ),
                    ContactCard(
                      icon: Icons.email_rounded,
                      label: 'dhayanithi10409@gmail.com',
                    ),
                    ContactCard(
                      icon: FontAwesomeIcons.whatsapp,
                      label: '+91-9962083578',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Made in ',
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 18,
            ),
            Text(
              ' with Flutter',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const ContactCard({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Set a fixed width to prevent stretching
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFA500), // Orange color
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), // Curved top-left corner
          topRight: Radius.circular(20), // Curved top-right corner
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
