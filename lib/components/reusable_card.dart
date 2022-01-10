import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Function onPress;
  final Color colour;
  final Widget cardChild;

  ReusableCard(
      {required this.onPress, required this.cardChild, required this.colour});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}