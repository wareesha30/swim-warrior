import 'package:flutter/material.dart';
import 'package:swimwarrior/widgets/continue_button.dart';
import 'package:swimwarrior/widgets/name_input.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Image.asset('assets/images/Frame.png'),
                    Image.asset('assets/images/Logo.png'),
                    const Spacer(),
                    const NameInput(),
                    const Spacer(),
                    const ContinueButton(),
                    const SizedBox(
                      height: 58,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
