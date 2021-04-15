import 'package:flutter/material.dart';
import 'package:flutter_animation_study/AnimatedCrown.dart';

/// 小电视机
class ContainerRemoteStyle extends StatefulWidget {
  @override
  _ContainerRemoteStyleState createState() => _ContainerRemoteStyleState();
}

class _ContainerRemoteStyleState extends State<ContainerRemoteStyle> {
  Widget _backgroundImage = Image.asset(
    "images/img.png",
    // fit: BoxFit.fitHeight,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      // height: 300,
      // color: Colors.green,
      // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/img.png")), color: Colors.green,),
      // child: Container(
      //   color: Colors.yellow,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          _backgroundImage,
          _CenterAreaForContainer(),
          // Positioned(child: AnimatedCrownWidget()),
        ],
      ),
      //   // child: Image.asset(
      //   //   "images/img.png",
      //   //   fit: BoxFit.fitHeight,
      //   // ),
      // ))
    ));
  }
}

class _CenterAreaForContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/scanning_rectangle_4.png")),
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(33)),
      ),
      // padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
      // color: Colors.grey,
      child: Column(
        children: [
          // Image.asset("images/avatar_background.png"),
          // SizedBox(height: 10),
          Container(
            // height: 54,
            color: Colors.black,
            // child: Image.asset(
            //   "images/scanning_rectangle_4.png",
            //   fit: BoxFit.fitHeight,
            // ),
          )
        ],
      ),
    );
  }
}
