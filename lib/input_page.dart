import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomMenuColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender selectedGender) {
    // male card pressed
    print('updateColor called!');
    (selectedGender == Gender.male)
        ? {
            maleCardColor = inactiveCardColor,
            femaleCardColor = activeCardColor,
            print('selectedGender == male')
          }
        : maleCardColor = activeCardColor;
    (selectedGender == Gender.female)
        ? {
            femaleCardColor = inactiveCardColor,
            maleCardColor = activeCardColor,
            print('selectedGender == female')
          }
        : femaleCardColor = activeCardColor;
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
                        updateColor(Gender.male);
                      });
                      print('Male Pressed!');
                    },
                    child: ReusableCard(
                      maleCardColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                // Female Card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                      print('Female Pressed!');
                    },
                    child: ReusableCard(
                      femaleCardColor,
                      IconContent(FontAwesomeIcons.venus, 'FEMALE'),
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
