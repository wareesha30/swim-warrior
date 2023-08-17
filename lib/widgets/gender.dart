import 'package:flutter/material.dart';

class MyGender extends StatelessWidget {
  const MyGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
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
    )
        ),
        Container()
      ],
    );
  }
}
