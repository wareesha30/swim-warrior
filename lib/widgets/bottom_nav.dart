import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28, bottom: 24),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: blue,
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              'assets/images/crown.png',
              color: blue,
            ),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Image.asset('assets/images/Stopwatch.png'),
              label: 'Record'),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Image.asset('assets/images/team.png'),
              label: 'Team'),
          const BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.settings),
              label: 'Settings'),
        ],
      ),
    );
  }
}
