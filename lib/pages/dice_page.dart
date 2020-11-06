import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 3;

  int randomDice() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = randomDice();
                    });
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = randomDice();
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: RaisedButton(
                color: Colors.blue,
                child: Text("ROLL THE DICE!"),
                onPressed: () {
                  setState(() {
                    leftDiceNumber = randomDice();
                    rightDiceNumber = randomDice();
                  });
                }),
          ),
        ],
      ),
    );
  }
}
