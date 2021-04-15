import 'package:flutter/material.dart';
import 'package:flutter_animation_study/ResultDisplay.dart';

class ScaleAnimationPerformance {
  /// 动画时间
  final Duration duration;

  /// 曲线
  final Curve curve;
  const ScaleAnimationPerformance(this.duration, this.curve);
}

class _DefaultScaleAnimationPerformance extends ScaleAnimationPerformance {
  const _DefaultScaleAnimationPerformance()
      : super(const Duration(milliseconds: 800), Curves.bounceOut);
}

class ScaleAnimationLoader extends StatefulWidget implements ResultDisplay {
  final _ScaleAnimationLoaderState state = _ScaleAnimationLoaderState();

  void play() {
    state.play();
  }

  final Widget core;

  final _DefaultScaleAnimationPerformance performance;

  ScaleAnimationLoader(this.core,
      {this.performance = const _DefaultScaleAnimationPerformance()})
      : super();

  @override
  _ScaleAnimationLoaderState createState() => state;

  Widget animatedWidget() {
    return this;
  }
}

class _ScaleAnimationLoaderState extends State<ScaleAnimationLoader>
    with TickerProviderStateMixin, ResultDisplay {
  Animation<double> _baseAnimation;
  AnimationController _animController;

  @override
  Widget animatedWidget() {
    return widget;
  }

  @override
  void initState() {
    super.initState();
    _animController =
        AnimationController(vsync: this, duration: widget.performance.duration);
    _baseAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: 1)
              .chain(CurveTween(curve: widget.performance.curve)),
          weight: 10),
    ]).animate(_animController);

    Future.delayed(Duration(seconds: 2)).then((v) => repeat());
  }

  void repeat() {
    _animController.repeat();
  }

  void play() {
    _animController.reset();
    _animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _baseAnimation,
      child: widget.core,
    );
  }
}
