import 'package:flutter/material.dart';
import 'package:swimwarrior/screens/verification.dart';
import 'package:swimwarrior/utils/colors.dart';
//import 'package:swimwarrior/widgets/email.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Verification();
        }))
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 45),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Continue',
              style: TextStyle(fontSize: 25, color: blue),
            ),
            const SizedBox(
              width: 15,
            ),
            Icon(Icons.arrow_forward, color: blue),
          ],
        ),
      ),
    );
  }
}
