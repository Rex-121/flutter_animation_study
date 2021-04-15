import 'package:flutter/material.dart';
import 'package:flutter_animation_study/ResultDisplay.dart';
import 'package:flutter_animation_study/ScaleAnimationLoader.dart';

class AnimatedRatingWidget extends StatelessWidget implements ResultDisplay {
  final ResultDisplay loader = ScaleAnimationLoader(Image.asset(
    "images/excellent.png",
    height: 60,
    fit: BoxFit.fitHeight,
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
