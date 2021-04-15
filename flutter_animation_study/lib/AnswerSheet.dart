import 'package:flutter/material.dart';
import 'package:flutter_animation_study/ABCDAnswerSheet.dart';
import 'package:flutter_animation_study/ResultDisplay.dart';

class AnimatedAnswerSheet extends StatefulWidget {
  @override
  _AnimatedAnswerSheetState createState() => _AnimatedAnswerSheetState();
}

class _AnimatedAnswerSheetState extends State<AnimatedAnswerSheet>
    with TickerProviderStateMixin, ResultDisplay {
  void play() {}

  @override
  Widget animatedWidget() {
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ABCDAnswerSheet(),
    );
  }
}
