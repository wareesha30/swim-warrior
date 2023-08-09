import 'package:flutter/material.dart';
import 'package:swimwarrior/widgets/creds_signin.dart';
import 'package:swimwarrior/widgets/email.dart';
import 'package:swimwarrior/widgets/password.dart';

class Creds extends StatelessWidget {
  const Creds({super.key});

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
                      const Email(),
                      const SizedBox(
                        height: 40,
                      ),
                      const Password(),
                      const SizedBox(
                        height: 144,
                      ),
                      const CredsSignin(),
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
