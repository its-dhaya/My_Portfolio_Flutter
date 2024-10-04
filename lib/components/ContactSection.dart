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
          padding: const EdgeInsets.only(left: 180.0),
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
        // Just place the Contact Cards evenly without grey container
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
        const SizedBox(height: 40),
        // "Made in love with Flutter" text outside and at the bottom of the page
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
        const SizedBox(height: 20), // Spacing to adjust it to the bottom
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
      height: 150,
      width: 250, // Set a fixed width to prevent stretching
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFA500), // Orange color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the contents vertically
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
