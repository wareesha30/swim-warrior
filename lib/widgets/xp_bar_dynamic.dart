import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';

class Bar extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final int xp;
  const Bar({super.key, this.margin, required this.xp});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: double.maxFinite,
          margin: margin,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: LayoutBuilder(builder: (context, constraints) {
              double width = constraints.maxWidth;
              return Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: double.maxFinite,
                  width: width * (xp / 1000),
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              );
            }),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Text(
              "$xp / 1000 XP",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
