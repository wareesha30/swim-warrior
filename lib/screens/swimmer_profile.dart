import 'package:flutter/material.dart';
import 'package:swimwarrior/screens/swimmer_stroke.dart';
import 'package:swimwarrior/utils/colors.dart';
import 'package:swimwarrior/widgets/butterfly.dart';
import 'package:swimwarrior/widgets/xp_bar_dynamic.dart';

class SwimmerProfile extends StatelessWidget {
  const SwimmerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: blue,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: const Column(
            children: [
              Text(
                '@andretacuyan',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text('Andre Tacuyan',
                  style: TextStyle(color: Colors.white, fontSize: 12))
            ],
          ),
          actions: [
            Image.asset('assets/images/infinite.png'),
            const SizedBox(
              width: 29,
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: blue,
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 130,
                          height: 130,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Image.asset(
                            'assets/images/Total_score_04-23.png',
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        width: 30,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Silver III',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              )),
                          Text('Division III',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text('2918',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              )),
                          Text('Points',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Bar(
                    xp: 550,
                    margin: EdgeInsets.symmetric(horizontal: 44),
                  )
                ],
              ),
            ),
            Positioned(
                top: 270,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 41, vertical: 16),
                  decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SwimmerStroke();
                            }))
                          },
                          child: const Butterfly(
                            text: 'Butterfly',
                            show: ConditionalImg.image2,
                            showArrow: true,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Butterfly(
                          text: 'Backstroke',
                          show: ConditionalImg.image2,
                          showArrow: true,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Butterfly(
                          text: 'Breaststroke',
                          show: ConditionalImg.image2,
                          showArrow: true,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Butterfly(
                          text: 'Freestyle',
                          show: ConditionalImg.image2,
                          showArrow: true,
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
