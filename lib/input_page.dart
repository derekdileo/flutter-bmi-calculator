import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomMenuColor = Color(0xFFEB1555);
const maleIcon = Icon(
  FontAwesomeIcons.mars,
  size: 80.0,
);
const femaleIcon = Icon(
  FontAwesomeIcons.venus,
  size: 80.0,
);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          // Top Two Boxes
          Expanded(
            child: Row(
              children: [
                // Male Card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                      print('Male Pressed!');
                    },
                    child: ReusableCard(
                      maleCardColor,
                      IconContent(maleIcon, 'MALE'),
                    ),
                  ),
                ),
                // Female Card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                      print('Female Pressed!');
                    },
                    child: ReusableCard(
                      femaleCardColor,
                      IconContent(femaleIcon, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Middle Box
          Expanded(
            child: ReusableCard(
              activeCardColor,
              Column(
                children: [],
              ),
            ),
          ),
          // Bottom Two Boxes
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  activeCardColor,
                  Column(),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  activeCardColor,
                  Column(),
                ),
              ),
            ],
          )),
          Container(
            color: bottomMenuColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

// Use 'extract widget' from flutter outline
// Access by CMD+Clicking the widget in question
// (Or just right click, refactor, extract flutter widget)
