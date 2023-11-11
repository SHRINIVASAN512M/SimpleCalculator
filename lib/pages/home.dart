import 'package:calculatorapp/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int firstnum;
  late int secondnum;
   String history = '';
   String textToDisplay = '';
  late String res;
  late String operation;

  void buttonOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
      history = '';
    }else if(btnVal == '+/-'){
      if(textToDisplay[0] == '-'){
      res = '-'+textToDisplay;
      }
       else{
        res = textToDisplay.substring(1);
       }
    }
    else if(btnVal == '<'){
      res = textToDisplay.substring(0,textToDisplay.length - 1);
    }
   else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstnum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondnum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        res = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'X') {
        res = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        res = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Calculator")),
      ),
      backgroundColor: const Color(0xFF28527a),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(history,
                      style: TextStyle(color: Color(0x66FFFFFF), fontSize: 24)),
                ),
              ),
              Container(
                alignment: Alignment(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(textToDisplay,
                      style: TextStyle(color: Colors.white, fontSize: 48)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    textSize: 24,
                    colorfill: Colors.redAccent,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    textSize: 24,
                    colorfill:Colors.redAccent,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '<',
                    textSize: 24,
                    colorfill: Colors.redAccent,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    textSize: 24,
                    colorfill: Colors.purpleAccent,
                    callback: buttonOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '7',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: 'X',
                    textSize: 24,
                     colorfill: Colors.purpleAccent,
                    callback: buttonOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '4',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    textSize: 24,
                     colorfill: Colors.purpleAccent,
                    callback: buttonOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '1',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    textSize: 24,
                     colorfill: Colors.purpleAccent,
                    callback: buttonOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '00',
                    textSize: 24,
                    colorfill: Colors.black,
                    callback: buttonOnClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    textSize: 24,
                     colorfill: Colors.purpleAccent,
                    callback: buttonOnClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
