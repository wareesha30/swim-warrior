import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';
import 'package:swimwarrior/widgets/butterfly.dart';

class SwimmerStrokeEmpty extends StatelessWidget {
  const SwimmerStrokeEmpty({super.key});

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
              Text('Butterfly',
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
                top: 270,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 41, vertical: 100),
                  decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                      )),
                  child: const SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Butterfly(
                          textSize: false,
                          showImage: false,
                          txt: '25',
                          bgcolor: false,
                          text: 'Unranked',
                          showArrow: false,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Butterfly(
                          textSize: false,
                          showImage: false,
                          txt: '50',
                          bgcolor: false,
                          text: 'Unranked',
                          showArrow: false,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Butterfly(
                          textSize: false,
                          showImage: false,
                          txt: '75',
                          bgcolor: false,
                          text: 'Unranked',
                          showArrow: false,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Butterfly(
                          textSize: false,
                          showImage: false,
                          txt: '100',
                          bgcolor: false,
                          text: 'Unranked',
                          showArrow: false,
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 260,
                  width: 260,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/images/unranked.png',
                  ),
                )),
          ],
        ));
  }
}
