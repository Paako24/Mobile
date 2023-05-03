import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CalculatorModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.display,
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                text: '7',
                onPressed: () => model.pressButton('7'),
              ),
              CalculatorButton(
                text: '8',
                onPressed: () => model.pressButton('8'),
              ),
              CalculatorButton(
                text: '9',
                onPressed: () => model.pressButton('9'),
              ),
              CalculatorButton(
                text: '+',
                onPressed: () => model.pressButton('+'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                text: '4',
                onPressed: () => model.pressButton('4'),
              ),
              CalculatorButton(
                text: '5',
                onPressed: () => model.pressButton('5'),
              ),
              CalculatorButton(
                text: '6',
                onPressed: () => model.pressButton('6'),
              ),
              CalculatorButton(
                text: '-',
                onPressed: () => model.pressButton('-'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                text: '1',
                onPressed: () => model.pressButton('1'),
              ),
              CalculatorButton(
                text: '2',
                onPressed: () => model.pressButton('2'),
              ),
              CalculatorButton(
                text: '3',
                onPressed: () => model.pressButton('3'),
              ),
              CalculatorButton(
                text: '*',
                onPressed: () => model.pressButton('*'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButton(
                text: '0',
                onPressed: () => model.pressButton('0'),
              ),
              CalculatorButton(
                text: 'C',
                onPressed: () => model.pressButton('C'),
              ),
              CalculatorButton(
                text: '=',
                onPressed: () => model.pressButton('='),
              ),
              CalculatorButton(
                text: '/',
                onPressed: () => model.pressButton('/'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CalculatorButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

