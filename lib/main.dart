import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice = 1;
  int rightDice = 1;

  void randDomDice(){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: randDomDice,
              child:
              Image.asset("images/dice$leftDice.png")
              ,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: randDomDice,
              child:
              Image.asset("images/dice$rightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}



