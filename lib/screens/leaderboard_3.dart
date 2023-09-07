import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';
import 'package:swimwarrior/widgets/bottom_nav.dart';
import 'package:swimwarrior/widgets/swimmer_rank.dart';

class LeaderBoard3 extends StatelessWidget {
  const LeaderBoard3({super.key});

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
                  child: SingleChildScrollView(
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
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xFF90908E),
                              ),
                              suffixIcon: Icon(
                                Icons.filter_list,
                                color: Color(0xFF90908E),
                              ),
                              border: UnderlineInputBorder(),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Color(0xFF90908E),
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text("5-8 | Male | Diamond | Butterfly",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF90908E))),
                            ),
                            Image.asset('assets/images/circlecross.png')
                          ],
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
