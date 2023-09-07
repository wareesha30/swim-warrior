import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';

class Butterfly extends StatelessWidget {
  final String text;
  final bool? showArrow;
  final bool? bgcolor;
  final bool? showImage;
  final String? txt;
  final bool? textSize;

  const Butterfly(
      {super.key,
      required this.text,
      this.showArrow,
      this.bgcolor,
      this.showImage,
      this.txt,
      this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 72,
      decoration: BoxDecoration(
          color: bgcolor ?? true ? blue : const Color(0xff90908e),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: if(showImage ?? true)
                {Image.asset(
                    'assets/images/unranked.png',
                    fit: BoxFit.cover,
                  )}
                else if 
                {Center(
                    child: Text(
                      '$txt',
                      style: const TextStyle(
                          color: Color(0xFF90908E), fontSize: 24),
                    ),
                  )} 
                  else {Image.asset(
                    'assets/images/Diamond_Butterfly_women.png',
                    fit: BoxFit.cover,
                  )}
          ),
          const SizedBox(
            width: 20,
          ),
          textSize ?? true
              ? Text(
                  text,
                  style: const TextStyle(fontSize: 28, color: Colors.white),
                )
              : Text(
                  text,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
          const Spacer(),
          showArrow ?? true
              ? const Icon(Icons.arrow_forward, color: Colors.white)
              : const SizedBox(),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
