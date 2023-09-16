import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swimwarrior/utils/colors.dart';

class CredsSignin extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgcolor;
  final Color? arrowColor;
  final double? height;
  final bool? showArrow;

  const CredsSignin({
    super.key,
    required this.text,
    required this.color,
    required this.bgcolor,
    this.arrowColor,
    this.height,
    this.showArrow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: height ?? 70,
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w400, color: color),
          ),
          showArrow ?? true
              ? Icon(Icons.arrow_forward, color: arrowColor ?? blue)
              : const SizedBox(),
        ],
      ),
    );
  }
}
