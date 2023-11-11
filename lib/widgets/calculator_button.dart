import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final double textSize;
  final Color colorfill;
  final Function callback;
  const CalculatorButton(
      {super.key,
      required this.text,
      required this.textSize,
      required this.colorfill,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: OutlinedButton(
            onPressed: () =>callback(text),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(12.0)
              )
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: textSize, 
                color: colorfill,
              ),
            )),
      ),
    );
  }
}
