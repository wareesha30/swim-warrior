import 'package:flutter/material.dart';
import 'package:swimwarrior/screens/leaderboard_filter.dart';
import 'package:swimwarrior/utils/colors.dart';
import 'package:swimwarrior/widgets/bottom_nav.dart';
import 'package:swimwarrior/widgets/swimmer_rank.dart';

class LeaderBoard1 extends StatelessWidget {
  const LeaderBoard1({super.key});

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
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: InkWell(
                                onTap: () => {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const LeaderBoardFilter();
                                      }))
                                    },
                                child: const Icon(Icons.filter_list)),
                            border: const UnderlineInputBorder(),
                            hintText: 'Search',
                            hintStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      const SwimmerRank(
                        prefix: '1',
                        main: 'Andre Tacuyan',
                        suffix: '0',
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const SwimmerRank(
                        prefix: '2',
                        main: 'Lauren Higgs',
                        suffix: '0',
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const SwimmerRank(
                        prefix: '3',
                        main: 'Matt Smith',
                        suffix: '0',
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const SwimmerRank(
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
