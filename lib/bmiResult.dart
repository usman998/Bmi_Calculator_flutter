import 'dart:math';

import 'package:flutter/cupertino.dart';

class BmiResult {
  BmiResult({@required this.weight, @required this.height});

  final int weight;
  final int height;
  double _bmi;
  String actualResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String textResult() {
    if (_bmi <= 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'NORMAL';
    } else if (_bmi >= 25) {
      return 'OVERWEIGHT';
    }
  }

  String resultAdvise() {
    if (_bmi <= 18.5) {
      return 'you need to increase your protein intake';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'your bmi is normal you need to maintain it';
    } else if (_bmi >= 25) {
      return 'you are verweight you need to workout';
    }
  }
}
