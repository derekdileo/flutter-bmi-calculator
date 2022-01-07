import 'package:bmi_calculator_flutter/components/reusable_card_2.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResultsPageState();
  }
}

// You need to get rid of (or refactor) the reusable cards.
// They do not agree with the passing of results!

class ResultsPageState extends StatefulWidget {
  const ResultsPageState({Key? key}) : super(key: key);

  @override
  _ResultsPageStateState createState() => _ResultsPageStateState();
}

class _ResultsPageStateState extends State<ResultsPageState> {
  double bodyMassIndex = 0;

  String result = 'Results go here';

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // BMI
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Your Result',
                        style: kNumberTextStyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: ReusableCard2(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'NORMAL',
                            style: kResultTextStyle,
                          ),
                          Text(
                            'bmiResult',
                            style: kBMITextStyle,
                          ),
                          Text(
                            'Your BMI result is quite low, you should eat more!',
                            textAlign: TextAlign.center,
                            style: kBodyTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Text(
                //   'BODY MASS INDEX',
                //   style: kLabelTextStyle,
                // ),
                // Text(
                //   bodyMassIndex.toString(),
                //   style: kTitleTextStyle,
                // ),
              ],
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
                  Navigator.pop(context);
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
