import 'package:flutter/material.dart';
import 'package:flutter_animation_study/ResultDisplay.dart';
import 'package:flutter_animation_study/ScaleAnimationLoader.dart';

class AnimatedScaleText extends StatelessWidget implements ResultDisplay {
  final ResultDisplay loader = ScaleAnimationLoader(Text(
    "Answer D",
    style: TextStyle(fontSize: 60, color: Colors.white),
  ));

  @override
  void play() {
    loader.play();
  }

  @override
  Widget animatedWidget() {
    return loader.animatedWidget();
  }

  @override
  Widget build(BuildContext context) {
    return animatedWidget();
  }
}
