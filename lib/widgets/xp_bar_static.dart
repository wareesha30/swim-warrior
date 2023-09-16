import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';

class BarStatic extends StatelessWidget {
  const BarStatic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 47,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Center(
        child: Text("0/1000 XP",
            style: TextStyle(
              color: blue,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
