import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      InkWell(
        child: Container(
          width: 128,
          height: 44,
          decoration: ShapeDecoration(
            color: const Color(0xFF242E7F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Male',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
      InkWell(
        child: Container(
          width: 128,
          height: 44,
          decoration: ShapeDecoration(
            color: const Color(0xFF242E7F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Female',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400),
              )),
        ),
      )
    ]);
  }
}
