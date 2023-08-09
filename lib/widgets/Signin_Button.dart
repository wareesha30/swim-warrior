import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signin extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgcolor;
  final FaIcon img;
  const Signin(
      {super.key,
      required this.text,
      required this.color,
      required this.img,
      required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 45),
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 15),
          img,
          const SizedBox(width: 15),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                child: Text(
                  text,
                  style: TextStyle(color: color, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
