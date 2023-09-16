import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';
import 'package:swimwarrior/widgets/butterfly.dart';

class SwimmerStrokeEvent extends StatefulWidget {
  const SwimmerStrokeEvent({super.key});

  @override
  State<SwimmerStrokeEvent> createState() => _SwimmerStrokeEventState();
}

class _SwimmerStrokeEventState extends State<SwimmerStrokeEvent> {
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
                top: 0,
                bottom: 455,
                left: 190,
                right: 90,
                child: Row(
                  children: [
                    Image.asset('assets/images/stopW.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text("0:49.84",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                )),
            Positioned(
                top: 175,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 41, vertical: 100),
                    decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                        )),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Butterfly(
                          secondaryText: 'Division I',
                          textSize: false,
                          txt: '25',
                          text: 'Diamond IV',
                          showArrow: false,
                          show: ConditionalImg.text,
                          textColor: blue,
                          replaceArrow: const Text(
                            '0:13:42',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 24,
                      ),
                      itemCount: 4,
                    ))),
            Positioned(
                top: 100,
                left: 0,
                right: 205,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 155,
                  width: 155,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/images/Diamond_Butterfly_women.png',
                  ),
                )),
          ],
        ));
  }
}
