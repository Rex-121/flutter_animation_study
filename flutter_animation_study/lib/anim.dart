import 'package:flutter/material.dart';

class Anim extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AN();
  }
}

class _AN extends State<Anim> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1400));

    Future.delayed(Duration(seconds: 2), () {
      controller.repeat();
    });
  }

  @override
  Widget build(BuildContext context) {
    Animation<double> k = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1, end: 2),
          // .chain(CurveTween(curve: Curves.bounceOut)),
          weight: 10),
      TweenSequenceItem<double>(tween: ConstantTween<double>(2), weight: 85),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 2, end: 1)
              .chain(CurveTween(curve: Curves.linear)),
          weight: 5)
    ]).animate(controller);
    // Animation<double> k = Tween<double>(begin: 1, end: 2).animate(controller);
// ReverseTween(parent)
    return Center(child: Container(width: 300, height: 200, child: KKKLLL()));
    return AnimatedBuilder(
        animation: k,
        builder: (context, widget) {
          return Center(
              child: Container(
            color: Colors.red,
            width: 300,
            height: 100,
            child: Row(
              children: [
                FittedBox(
                  child: Container(
                      width: 60 * k.value,
                      height: 60 * k.value,
                      color: Colors.blue),
                )
              ],
            ),
          ));
        });
  }
}

class KKKLLL extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _KKLLAA();
  }
}

class _KKLLAA extends State<KKKLLL> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1400));

    Future.delayed(Duration(seconds: 2), () {
      controller.repeat();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Animation<double> k = TweenSequence([
    //   TweenSequenceItem<double>(
    //       tween: Tween<double>(begin: 1, end: 2),
    //       // .chain(CurveTween(curve: Curves.bounceOut)),
    //       weight: 10),
    //   TweenSequenceItem<double>(tween: ConstantTween<double>(2), weight: 85),
    //   TweenSequenceItem<double>(
    //       tween: Tween<double>(begin: 2, end: 1)
    //           .chain(CurveTween(curve: Curves.linear)),
    //       weight: 5)
    // ]).animate(controller);

    return Row(
      children: [
        Expanded(
            child: ScaleTransition(
          scale: getWaitingItemAnimation(0.2, 0.4),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/green.png")),
            ),
          ),
        )),
        Expanded(
            child: ScaleTransition(
          scale: getWaitingItemAnimation(0.4, 0.6),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/yellow.png")),
            ),
          ),
        )),
        Expanded(
            child: ScaleTransition(
          scale: getWaitingItemAnimation(0.6, 0.8),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/red.png")),
            ),
          ),
        )),
        Expanded(
            child: ScaleTransition(
          scale: getWaitingItemAnimation(0.8, 1),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/blue.png")),
            ),
          ),
        )),
      ],
    );
    //   },
    // );
  }

  Animation<double> getWaitingItemAnimation(double start, double end) {
    return ReversibleTween<double>(begin: 1, end: 1.5).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(start, end, curve: ReverseCurve())));
  }
}

class ReversibleTween<T> extends Tween<T> {
  ReversibleTween({T begin, T end}) : super(begin: begin, end: end);
  @override
  T transform(double t) {
    if (t == 0.0) return begin;
    if (t == 1.0) return begin;
    return lerp(t);
  }
}

class ReverseCurve extends Curve {
  @override
  double transformInternal(double t) {
    if (t < 0.5) {
      return t * 2;
    } else {
      t = 1.0 - t;
      return t * 2;
    }
  }
}
