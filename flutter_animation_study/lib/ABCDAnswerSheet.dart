import 'package:flutter/material.dart';
import 'package:flutter_animation_study/AnimatedCrown.dart';

class ABCDAnswerSheet extends StatefulWidget {
  @override
  _ABCDAnswerSheetState createState() => _ABCDAnswerSheetState();
}

class _ABCDAnswerSheetState extends State<ABCDAnswerSheet> {
  void dd() {}

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        ABCDAnswerButton(),
        const SizedBox(width:15),
        ABCDAnswerButton(),
        const SizedBox(width:15),
        ABCDAnswerButton(),
        const SizedBox(width:15),
        ABCDAnswerButton()
      ],
    );
  }
}

class ABCDAnswerButton extends StatefulWidget {
  // String title;

  @override
  _ABCDAnswerButtonState createState() => _ABCDAnswerButtonState();
}

class _ABCDAnswerButtonState extends State<ABCDAnswerButton> {
  void dd() {}

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(onPressed: dd, label: Text("A"));
  }
}
