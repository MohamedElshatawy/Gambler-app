import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int _leftDice = 1;
  int _rightDice = 1;
  void _getRandom_Dice() {
    setState(() {
      _leftDice = Random().nextInt(6) + 1;
      _rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[800],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Dicee',
            style: TextStyle(
              fontFamily: 'Pacifico',
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: ()=> Navigator.of(context).pushNamedAndRemoveUntil('/', (Route <dynamic> route)=>false),
          ),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: _getRandom_Dice,
                  child: Image.asset('images/$_leftDice.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: _getRandom_Dice,
                  child: Image.asset('images/$_rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
