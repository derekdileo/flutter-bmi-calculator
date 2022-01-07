import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

// Typically, the main.dart holds the theming data
// (custom fonts, colors, shapes, etc.).
// From here, split off into new dart files
// for every subsequent screen.

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: kAppBarColor,
          elevation: 2,
        ),
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        // primaryColor: Color(0XFF0A0D22),
        // primaryColorDark: Colors.purple.shade900,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
