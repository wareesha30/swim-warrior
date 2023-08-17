import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:swimwarrior/utils/colors.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  // ignore: unused_field
  RangeValues _currentRangeValues = const RangeValues(0, 18);
  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      values: const [0, 18],
      min: 0,
      max: 18,
      rangeSlider: true,
      handlerHeight: 15,
      handlerWidth: 15,
      trackBar: FlutterSliderTrackBar(
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        activeTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
      ),
      handler: FlutterSliderHandler(
        decoration: BoxDecoration(
          color: blue,
          shape: BoxShape.circle,
        ),
        child: const SizedBox(),
      ),
      rightHandler: FlutterSliderHandler(
        decoration: BoxDecoration(
          color: blue,
          shape: BoxShape.circle,
        ),
        child: const SizedBox(),
      ),
      onDragging: (handlerIndex, lowerValue, upperValue) {
        _currentRangeValues = lowerValue;
        _currentRangeValues = upperValue;
        setState(() {});
      },
    );
  }
}
