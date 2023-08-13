import 'package:flutter/material.dart';

class SwimmerRank extends StatelessWidget {
  final String suffix;
  final String prefix;
  final String main;
  const SwimmerRank(
      {super.key,
      required this.suffix,
      required this.prefix,
      required this.main});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(prefix,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            )),
        const SizedBox(
          width: 12,
        ),
        Image.asset(
          'assets/images/Unranked_total_Score.png',
        ),
        const SizedBox(
          width: 12,
        ),
        Text(main,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            )),
        const Spacer(),
        Text(suffix,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            ))
      ],
    );
  }
}
