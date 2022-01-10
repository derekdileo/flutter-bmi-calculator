import 'package:flutter/material.dart';

class ReusableCard3 extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final String inputString;

  ReusableCard3(
      {required this.cardChild,
      required this.colour,
      required this.inputString});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Text(
          inputString,
        ),
      ],
    );
  }
}
