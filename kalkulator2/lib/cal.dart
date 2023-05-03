import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kal/cal_provider.dart';
import 'package:kal/cal_button.dart';


class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CalculatorModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           SingleChildScrollView(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Text(
                     model.display,
                     style: TextStyle(fontSize: 80),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 16),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      ),
    );
  }
}



