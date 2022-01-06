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
  initialize,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // selectedGender cannot be null, so use initialize enum.
  Gender selectedGender = Gender.initialize;

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
                        selectedGender = Gender.male;
                        // updateColor(selectedGender);
                      });
                      print('Male Pressed!');
                    },
                    child: ReusableCard(
                      selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                // Female Card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        // updateColor(selectedGender);
                      });
                      print('Female Pressed!');
                    },
                    child: ReusableCard(
                      selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
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
