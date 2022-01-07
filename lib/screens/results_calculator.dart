import 'package:flutter/material.dart';
import 'input_page.dart';
import 'dart:math';

class Result {
  Result(this.gender, this.height, this.weight, this.age);

  final Gender gender;
  final int height;
  final int weight;
  final int age;

  String calculateBMIString() {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  double calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  double calculateMetricBMI(double cm, double kg) {
    // Metric BMI = [ weight / (m^2) ]
    double bmi = kg / pow(cm / 100, 2);
    return bmi.roundToDouble();
  }

  double calculateImperialBMI(double inches, double lbs) {
    // Imperial BMI = [ (703*weight) / (inches^2) ]
    double impConstant = 703;
    return impConstant * lbs / (inches * inches);
  }

  String getResult() {
    double bmi = calculateBMI();
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double bmi = calculateBMI();
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
