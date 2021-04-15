import 'package:flutter/material.dart';

class RowSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 20,
              child: Container(width: 30, height: 20, color: Colors.white)),
          // CC(),
          ABC()
        ],
      ),
    );
  }
}

class CC extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CCS();
  }
}

class _CCS extends State<CC> with SingleTickerProviderStateMixin {
  double height = 100;

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 4), () {
    //   setState(() {
    //     height += 40;
    //   });
    // });
    // Tween()

    // AnimatedContainer aa = AnimatedContainer(
    //   color: Colors.white,
    //   height: height,
    //   width: 100,
    //   child: Text("data"),
    //   duration: Duration(seconds: 3),
    // );

    AnimationController k = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1440));

    // var kc = KKgg(begin: 1);
    Animation kk = ABCTween(begin: KKLL(), end: KKLL()).animate(k);

    Animation kkll =
        SizeTween(begin: Size(20, 23), end: Size(44, 44)).animate(k);

    Future.delayed(Duration(seconds: 4), () {
      k.forward();
    });
    AnimatedBuilder abc = AnimatedBuilder(
      animation: kk,
      builder: (context, wid) {
        print(kk.value);
        print(kkll.value);
        return Container(
          height: 123,
          width: 124,
          color: Colors.white,
          child: Text("data"),
        );
      },
    );

    return Center(
        child: Container(
      width: 300,
      // height: 120,
      color: Colors.yellow,
      child: Center(child: abc),
    ));
  }
}

class ABC extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BS();
  }
}

class _BS extends State<ABC> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    AnimationController k = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1440));

    // var kc = KKgg(begin: 1);
    Animation<double> zz = Tween<double>(begin: 1, end: 2).chain(Tween<double>(begin: 2, end: 1)).animate(k);

    // Animation zz = TweenSequence([TweenSequenceItem(tween: Tween<double>(begin: 1, end: 2), weight: 30),TweenSequenceItem(tween: Tween<double>(begin: 2, end: 1), weight: 30)]).animate(k);
    Animation kkll =
        SizeTween(begin: Size(20, 23), end: Size(44, 44)).animate(k);

    Future.delayed(Duration(seconds: 4), () {
      k.repeat();
    });

    return Positioned(
        bottom: 30,
        child: AnimatedBuilder(
            animation: zz,
            // width: 300,
            // height: 300,
            // color: Colors.red,
            //
            builder: (c, a) {
              return Container(
                width: 300,
                height: 300,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              width: 60 * zz.value,
                              height: 60 * zz.value,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("images/yellow.png"))))),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/green.png")))),
                      ),
                      Expanded(child: Image.asset("images/red.png")),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/green.png")))),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}

class KKLL {
  double k = 0;
}

class ABCTween extends Tween<KKLL> {
  ABCTween({KKLL begin, KKLL end}) : super(begin: begin, end: end);

  @override
  KKLL lerp(double t) {
    print(t);
    return KKLL();
  }

  @override
  KKLL transform(double t) {
    print("object:$t");
    if (t == 0.0) return begin;
    if (t == 1.0) return end;
    return lerp(t);
  }
}

// class KKgg<T> extends Tween<T> {
//   KKgg({this.begin});

//   @override
//   T transform(double t) {
//     if (t == 0.0) return begin as T;
//     if (t == 1.0) return end as T;
//     return lerp(t);
//   }
// }
