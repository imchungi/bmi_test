import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return 'double _bmi  String calculateBMI() {_bmi = weight / pow(height / 100, 2)';
    } else if (_bmi > 18.5) {
      return 'The problem was in the order of the methods before calling calculatorBMI()... so, just reorder it. You probably are callings another method first instead.';
    } else {
      return 'Rather than enforcing a sequence in the way the methods are called (CalculateBMI always needing to be first),';
    }
  }


}
