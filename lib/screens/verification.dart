import 'package:flutter/material.dart';
import 'package:swimwarrior/screens/leaderboard_1.dart';
import 'package:swimwarrior/utils/colors.dart';
import 'package:swimwarrior/widgets/verification_code.dart';
import '../widgets/creds_signin_button.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/Background.png',
                  fit: BoxFit.cover,
                )),
            Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.17,
                      ),
                      Image.asset('assets/images/Frame.png'),
                      Image.asset('assets/images/Logo.png'),
                      const SizedBox(
                        height: 80,
                      ),
                      const VerificationCode(),
                      const SizedBox(
                        height: 240,
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LeaderBoard1();
                          }))
                        },
                        child: CredsSignin(
                          text: 'Sign up',
                          color: blue,
                          bgcolor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 58,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
