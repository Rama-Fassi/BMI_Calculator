import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 18;
  CalculatorBrain({required this.height, required this.weight});

  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight , Good job!';
    } else {
      return 'You have a lower than normal body weight , You can eat a bit more';
    }
  }
}
