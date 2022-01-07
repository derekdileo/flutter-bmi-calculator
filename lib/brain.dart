import 'package:bmi_calculator_flutter/reusable_card_2.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

class Brain extends StatelessWidget {
  const Brain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BrainState();
  }
}

class BrainState extends StatefulWidget {
  const BrainState({Key? key}) : super(key: key);

  @override
  _BrainStateState createState() => _BrainStateState();
}

class _BrainStateState extends State<BrainState> {
  double bodyMassIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Filler Space
          Expanded(
            flex: 1,
            child: Row(
              children: [],
            ),
          ),
          // BMI
          Expanded(
            flex: 2,
            child: ReusableCard2(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'BODY MASS INDEX',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      bodyMassIndex.toString(),
                      style: kNumberTextStyle,
                    ),
                  ],
                ),
                colour: kActiveCardColor),
          ),
          // Filler Space
          Expanded(
            flex: 1,
            child: Row(
              children: [],
            ),
          ),
          Container(
            color: kBottomMenuColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: TextButton(
              child: Text(
                'Return to Main',
                style: kFooterTextStyle,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
