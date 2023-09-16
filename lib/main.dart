//ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:swimwarrior/screens/leaderboard_1.dart';
import 'package:swimwarrior/screens/leaderboard_filter.dart';
import 'package:swimwarrior/screens/creds.dart';
import 'package:swimwarrior/screens/leaderboard_filteron.dart';
import 'package:swimwarrior/screens/profile_empty.dart';
import 'package:swimwarrior/screens/swimmer_profile.dart';
import 'package:swimwarrior/screens/leaderboard_6.dart';
import 'package:swimwarrior/screens/phone_number.dart';
import 'package:swimwarrior/screens/signup.dart';
import 'package:swimwarrior/screens/swimmer_stroke.dart';
import 'package:swimwarrior/screens/swimmerstroke_empty.dart';
import 'package:swimwarrior/screens/swimmerstroke_event.dart';
import 'package:swimwarrior/screens/verification.dart';
import 'package:swimwarrior/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swim Warrior',
      theme: ThemeData(
        sliderTheme: SliderThemeData(
          activeTickMarkColor: blue,
          inactiveTickMarkColor: Colors.transparent,
        ),
        fontFamily: 'SF Pro Display',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: const SignUp(),
    );
  }
}
