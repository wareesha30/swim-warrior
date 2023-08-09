import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swimwarrior/widgets/Signin_Button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                ),
                Image.asset('assets/images/Frame.png'),
                Image.asset('assets/images/Logo.png'),
                const Spacer(),
                const Signin(
                  color: Colors.white,
                  bgcolor: Colors.black,
                  img: FaIcon(
                    FontAwesomeIcons.apple,
                    size: 25,
                    color: Colors.white,
                  ),
                  text: 'Sign in with Apple',
                ),
                const SizedBox(
                  height: 24,
                ),
                const Signin(
                  color: Colors.white,
                  bgcolor: Color(0xFF1877F2),
                  img: FaIcon(
                    FontAwesomeIcons.squareFacebook,
                    size: 25,
                    color: Colors.white,
                  ),
                  text: 'Log in with Facebook',
                ),
                const SizedBox(
                  height: 24,
                ),
                const Signin(
                  color: Color(0xFF242E7F),
                  bgcolor: Colors.white,
                  img: FaIcon(
                    FontAwesomeIcons.phone,
                    size: 25,
                    color: Colors.black,
                  ),
                  text: 'Sign in with phone number',
                ),
                const SizedBox(height: 58)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
