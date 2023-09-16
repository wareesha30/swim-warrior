import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';

enum ConditionalImg {
  image1,
  text,
  image2,
}

class Butterfly extends StatelessWidget {
  final String text;
  final bool? showArrow;
  final bool? bgcolor;
  final ConditionalImg? show;
  final String? txt;
  final bool? textSize;
  final Widget? replaceArrow;
  final String? secondaryText;
  final Color? textColor;

  const Butterfly({
    super.key,
    required this.text,
    this.showArrow,
    this.bgcolor,
    required this.show,
    this.txt,
    this.textSize,
    this.replaceArrow,
    this.secondaryText,
    this.textColor,
  });

  Widget conditionalImage({
    required ConditionalImg condition,
    required Widget image1,
    required Widget image2,
    required Widget text,
  }) {
    switch (condition) {
      case ConditionalImg.image1:
        return image1;
      case ConditionalImg.text:
        return text;
      case ConditionalImg.image2:
        return image2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 72,
      decoration: BoxDecoration(
        color: bgcolor ?? true ? blue : const Color(0xff90908e),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            height: 56,
            width: 56,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: conditionalImage(
              condition: show ?? ConditionalImg.image1,
              image1: Image.asset(
                'assets/images/unranked.png',
                fit: BoxFit.cover,
              ),
              image2: Image.asset(
                'assets/images/Diamond_Butterfly_women.png',
                fit: BoxFit.cover,
              ),
              text: Center(
                  child: Text(
                '$txt',
                style: TextStyle(
                  fontSize: 24,
                  color: textColor,
                  fontWeight: FontWeight.w700,
                ),
              )),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          secondaryText == null
              ? textSize ?? true
                  ? Text(
                      text,
                      style: const TextStyle(fontSize: 28, color: Colors.white),
                    )
                  : Text(
                      text,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                    Text('$secondaryText',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
          const Spacer(),
          replaceArrow == null
              ? showArrow ?? true
                  ? const Icon(Icons.arrow_forward, color: Colors.white)
                  : const SizedBox()
              : replaceArrow!,
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
