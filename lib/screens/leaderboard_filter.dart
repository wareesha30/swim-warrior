import 'package:flutter/material.dart';
import 'package:swimwarrior/screens/leaderboard_filteron.dart';
import 'package:swimwarrior/widgets/creds_signin_button.dart';
import 'package:swimwarrior/widgets/gender_button.dart';
import 'package:swimwarrior/widgets/level_checkbox.dart';
import 'package:swimwarrior/widgets/range_slider.dart';
import '../utils/colors.dart';

class LeaderBoardFilter extends StatefulWidget {
  const LeaderBoardFilter({super.key});

  @override
  State<LeaderBoardFilter> createState() => _LeaderBoard2State();
}

class _LeaderBoard2State extends State<LeaderBoardFilter> {
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
            const Positioned.fill(
              top: 37,
              child: Text(
                'Leaderboard',
                style: TextStyle(color: Colors.white, fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 104,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                decoration: const ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    )),
                child: SingleChildScrollView(
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
                            fontFamily: 'SF Pro Display',
                          ),
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
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const LevelCheckbox(),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LeaderBoardFilterOn();
                          }))
                        },
                        child: CredsSignin(
                          text: 'Apply filter',
                          color: Colors.white,
                          bgcolor: blue,
                          arrowColor: Colors.white,
                          height: 60,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CredsSignin(
                        arrowColor: blue,
                        text: 'Clear filter',
                        color: blue,
                        bgcolor: Colors.white,
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
