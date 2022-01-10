import 'package:flutter/material.dart';
import '../constants.dart';

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
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Your Result',
                      style: kNumberTextStyle,
                    ),
                  ),
                ),
                //resultText, bmiResult, interpretation
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //resultText
                        Text(
                          resultText.toUpperCase(),
                          style: kResultTextStyle,
                        ),

                        //bmiResultNumber
                        Text(
                          bmiResult,
                          // '88',
                          style: kBMITextStyle,
                        ),
                        // Interpretation
                        Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: kActiveCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
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
