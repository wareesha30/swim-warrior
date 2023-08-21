import 'package:flutter/material.dart';
import 'package:swimwarrior/widgets/creds_signin.dart';
import 'package:swimwarrior/widgets/gender_button.dart';
import 'package:swimwarrior/widgets/level_checkbox.dart';
import 'package:swimwarrior/widgets/range_slider.dart';
import '../utils/colors.dart';

class LeaderBoard2 extends StatefulWidget {
  const LeaderBoard2({super.key});

  @override
  State<LeaderBoard2> createState() => _LeaderBoard2State();
}

class _LeaderBoard2State extends State<LeaderBoard2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              color: blue,
            ),
            const Positioned(
                top: 37,
                bottom: 746,
                left: 122,
                right: 122,
                child: Text(
                  'Leaderboard',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.center,
                )),
            Positioned(
              top: 104,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 40),
                decoration: const ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/cross.png'),
                        const SizedBox(
                          width: 100,
                        ),
                        const Text(
                          'Filter',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SF Pro Display',
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Age',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const MyRangeSlider(),
                    const SizedBox(height: 35),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Gender',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const GenderButton(),
                    const SizedBox(
                      height: 40,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Level',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const LevelCheckbox(),
                    const SizedBox(
                      height: 30,
                    ),
                    CredsSignin(
                        text: 'Apply filter',
                        color: Colors.white,
                        bgcolor: blue)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
