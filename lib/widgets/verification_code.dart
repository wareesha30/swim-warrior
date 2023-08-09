import 'package:flutter/material.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: 'Verification Code',
          labelStyle: TextStyle(color: Colors.white),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
