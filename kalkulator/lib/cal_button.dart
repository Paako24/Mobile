import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kalkulator/cal_model.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  final double paddingValue;

  CalculatorButton(
      {required this.buttonText,
        required this.paddingValue,});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Consumer<CalculationState>(
      builder: (context, value, child) {
        return ElevatedButton(
          onPressed: () {
            value.numClick(buttonText);
          },
          child: Text(
            buttonText,
            style:
               TextStyle(
                color: Color(0xff94AF9F),
                fontSize: 30,
              ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xffDBE4C6),
            shape: CircleBorder(),
            padding: EdgeInsets.all(paddingValue),
          ),
        );
      },
    ));
  }
}