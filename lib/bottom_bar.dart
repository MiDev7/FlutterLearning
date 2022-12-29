import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 73, 4, 90),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15.0),
        child: GNav(
          backgroundColor: Color.fromARGB(255, 73, 4, 90),
          gap: 10,
          tabBackgroundColor: Color.fromARGB(255, 147, 9, 182),
          padding: EdgeInsets.all(10),
          color: Colors.white,
          activeColor: Colors.white,
          duration: Duration(milliseconds: 500),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            )
          ],
        ),
      ),
    );
  }
}
