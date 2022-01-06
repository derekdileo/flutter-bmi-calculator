import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
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
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Male Pressed!');
                    },
                    child: ReusableCard(
                      activeCardColor,
                      IconContent(maleIcon, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Female Pressed!');
                    },
                    child: ReusableCard(
                      activeCardColor,
                      IconContent(femaleIcon, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Middle Box
          Expanded(
            child: GestureDetector(
              onTap: () {
                print('Male tapped');
              },
              child: ReusableCard(
                activeCardColor,
                Column(
                  children: [],
                ),
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
