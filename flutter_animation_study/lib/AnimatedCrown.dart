import 'package:flutter/material.dart';
import 'package:flutter_animation_study/ResultDisplay.dart';
import 'package:flutter_animation_study/ScaleAnimationLoader.dart';

class AnimatedCrownWidget extends StatelessWidget implements ResultDisplay {
  final ResultDisplay loader = ScaleAnimationLoader(Image.asset(
    "images/crown.png",
    // scale: 0.2,
    // height: 110,
    // width: 181,
    // fit: BoxFit.fitWidth,
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
