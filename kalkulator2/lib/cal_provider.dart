import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier {
  String _display = '';
  String? _operator;
  double? _prevValue;

  String get display=> _display;

  void pressButton(String buttonText) {
    switch (buttonText) {
      case 'C':
        _display = '';
        _operator = null;
        _prevValue = null;
        break;
      case '+':
      case '-':
      case '*':
      case '/':
        _prevValue = double.parse(_display);
        _operator = buttonText;
        _display = '';
        break;
      case '=':
        if (_operator == null || _prevValue == null) return;
        double currentValue = double.parse(_display);
        switch (_operator) {
          case '+':
            _display = (_prevValue! + currentValue).toString();
            break;
          case '-':
            _display = (_prevValue! - currentValue).toString();
            break;
          case '*':
            _display = (_prevValue! * currentValue).toString();
            break;
          case '/':
            _display = (_prevValue! / currentValue).toString();
            break;
        }
        _prevValue = null;
        _operator = null;
        break;
      default:
        if (_display == '0') {
          _display = buttonText;
        } else {
          _display += buttonText;
        }
        break;
    }
    notifyListeners();
  }
}
