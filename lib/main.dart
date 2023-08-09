// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:swimwarrior/screens/LeaderBoard_1.dart';
import 'package:swimwarrior/screens/creds.dart';
import 'package:swimwarrior/screens/phone_number.dart';
import 'package:swimwarrior/screens/signup.dart';
import 'package:swimwarrior/screens/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swim Warrior',
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LeaderBoard1(),
    );
  }
}
