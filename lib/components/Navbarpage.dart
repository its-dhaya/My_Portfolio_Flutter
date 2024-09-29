import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavbarItem(title: "Home"),
          NavbarItem(title: "About"),
          NavbarItem(title: "Services"),
          NavbarItem(title: "Projects"),
          NavbarItem(title: "Contacts"),
        ],
      ),
    );
  }
}

class NavbarItem extends StatefulWidget {
  final String title;

  const NavbarItem({super.key, required this.title});

  @override
  _NavbarItemState createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        decoration: BoxDecoration(
          color: _isHovered
              ? const Color(0xFFFFA500)
              : Colors.transparent, // Set hover color to #FFA500
          borderRadius: BorderRadius.circular(5.0), // Rounded corners
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Judson',
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
