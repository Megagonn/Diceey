import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}git add .
int leftDice = 1;
int rightDice = 6;
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(child: Image.asset('images/dice$leftDice.png'),
              onPressed: (){
                setState(() {
                  roll();
                });
              },
              ),
              ),
            Expanded(child: TextButton(child: Image.asset('images/dice$rightDice.png'),
            onPressed: (){
              setState(() {
                roll();
                // leftDice = Random().nextInt(6) + 1;
                // rightDice = Random().nextInt(6) + 1;
              });
            },),)
          ],
        ),
      ),
    );
  }
}

void roll(){
  leftDice = Random().nextInt(6) + 1;
  rightDice = Random().nextInt(6) + 1;
}
