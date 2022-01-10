import 'package:flutter/material.dart';
import 'input_page.dart';
import 'dart:math';

class Result {
  Result(this.gender, this.height, this.weight, this.age);

  final Gender gender;
  final int height;
  final int weight;
  final int age;

  double _bmi = 0;

  String calculateBMIString() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  double calculateMetricBMI(double cm, double kg) {
    // Metric BMI = [ weight / (m^2) ]
    _bmi = kg / pow(cm / 100, 2);
    return _bmi.roundToDouble();
  }

  double calculateImperialBMI(double inches, double lbs) {
    // Imperial BMI = [ (703 * weight) / (inches^2) ]
    double impConstant = 703;
    return impConstant * lbs / (inches * inches);
  }

  String getResult() {
    _bmi = calculateBMI();
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    _bmi = calculateBMI();
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
