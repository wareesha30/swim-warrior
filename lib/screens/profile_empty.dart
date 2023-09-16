import 'package:flutter/material.dart';
import 'package:swimwarrior/screens/swimmerstroke_empty.dart';
import 'package:swimwarrior/utils/colors.dart';
import 'package:swimwarrior/widgets/butterfly.dart';
import 'package:swimwarrior/widgets/xp_bar_static.dart';

class ProfileEmpty extends StatelessWidget {
  const ProfileEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: blue,
          leading: const BackButton(
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
                            'assets/images/icon.png',
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
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )),
                          SizedBox(
                            height: 23,
                          ),
                          Text('0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )),
                          Text('Points',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const BarStatic()
                ],
              ),
            ),
            Positioned(
                top: 255,
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
                              return const SwimmerStrokeEmpty();
                            }))
                          },
                          child: const Butterfly(
                            text: 'Butterfly',
                            show: ConditionalImg.image1,
                            showArrow: true,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Butterfly(
                          text: 'Backstroke',
                          show: ConditionalImg.image1,
                          showArrow: true,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Butterfly(
                          text: 'Breaststroke',
                          show: ConditionalImg.image1,
                          showArrow: true,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Butterfly(
                          text: 'Freestyle',
                          show: ConditionalImg.image1,
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
