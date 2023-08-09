import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';

class LeaderBoard1 extends StatelessWidget {
  const LeaderBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: blue,
          ),
          const Positioned(
              top: 37,
              bottom: 746,
              left: 122,
              right: 122,
              child: Text(
                'Leaderboard',
                style: TextStyle(color: Colors.white, fontSize: 24),
                textAlign: TextAlign.center,
              )),
          Positioned(
              top: 104,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
