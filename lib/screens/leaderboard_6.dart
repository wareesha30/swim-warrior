import 'package:flutter/material.dart';
import 'package:swimwarrior/screens/swimmer_profile.dart';
import 'package:swimwarrior/utils/colors.dart';
import 'package:swimwarrior/widgets/bottom_nav.dart';
import 'package:swimwarrior/widgets/swimmer_rank.dart';

class Leaderboard6 extends StatelessWidget {
  const Leaderboard6({super.key});

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
                top: 40,
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Season',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'All-Time',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Weekly',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.filter_list),
                            border: UnderlineInputBorder(),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SwimmerProfile();
                          }))
                        },
                        child: SwimmerRank(
                          changeIcon: false,
                          icon: Image.asset(
                            'assets/images/bronze.png',
                            width: 40,
                            height: 40,
                          ),
                          prefix: '1',
                          main: 'Andre Tacuyan',
                          suffix: '0',
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      SwimmerRank(
                        changeIcon: false,
                        icon: Image.asset(
                          'assets/images/Total_score.png',
                          width: 40,
                          height: 40,
                        ),
                        prefix: '2',
                        main: 'Lauren Higgs',
                        suffix: '0',
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      SwimmerRank(
                        changeIcon: false,
                        icon: Image.asset(
                          'assets/images/Copper_1.png',
                          width: 40,
                          height: 40,
                        ),
                        prefix: '3',
                        main: 'Matt Smith',
                        suffix: '0',
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      SwimmerRank(
                        changeIcon: false,
                        icon: Image.asset(
                          'assets/images/Copper_1.png',
                          width: 40,
                          height: 40,
                        ),
                        prefix: '4',
                        main: 'Thomas Meek',
                        suffix: '0',
                      ),
                      const SizedBox(
                        height: 221,
                      ),
                    ],
                  ),
                ))
          ],
        ),
        extendBody: true,
        bottomNavigationBar: const MyBottomNavBar(),
      ),
    );
  }
}
