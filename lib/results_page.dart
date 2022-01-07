import 'package:bmi_calculator_flutter/reusable_card_2.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResultsPageState();
  }
}

class ResultsPageState extends StatefulWidget {
  const ResultsPageState({Key? key}) : super(key: key);

  @override
  _ResultsPageStateState createState() => _ResultsPageStateState();
}

class _ResultsPageStateState extends State<ResultsPageState> {
  double bodyMassIndex = 0;

  double calculateMetricBMI(double cm, double kg) {
    double meters = cm / 100;
    return kg / (meters * meters);
  }

  double calculateImperialBMI(double inches, double lbs) {
    double impConstant = 703;
    return impConstant * lbs / (inches * inches);
  }

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
          // Footer
          Container(
            color: kBottomMenuColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: SizedBox(
              width: double.infinity,
              height: kBottomContainerHeight,
              child: TextButton(
                child: Text(
                  'RE-CALCULATE',
                  style: kFooterTextStyle,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/input_page');
                  // If routes not named, use the following
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
