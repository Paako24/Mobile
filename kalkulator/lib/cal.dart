import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kalkulator/cal_button.dart';
import 'package:kalkulator/cal_model.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Consumer<CalculationState>(
                      builder: (context, state, child) {
                        return Text(
                          state.expression,
                          style: TextStyle(
                              fontSize: 100,
                              color: Color(0xff94AF9F),
                            ),

                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: 'AC',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: 'C',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '%',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '/',
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '7',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '8',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '9',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: 'x',
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '4',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '5',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '6',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '-',
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '1',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '2',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '3',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '+',
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: ' . ',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '0',
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: "+/-",
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '=',
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}