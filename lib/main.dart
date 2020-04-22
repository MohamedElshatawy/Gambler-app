import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Gambing/xlophone.dart';
import 'package:Gambing/dicess.dart';
import 'package:Gambing/loading.dart';
import 'package:Gambing/Quizer.dart';
import 'package:Gambing/destini.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => Loading(),
        '/piano': (context) => Xlophone(),
        '/dice': (context) => Dice(),
        '/quiz' : (context) => Quiz(),
        '/destini':(context) => Destini(),
      },
    );
  }
}


