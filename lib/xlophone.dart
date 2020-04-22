import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xlophone extends StatelessWidget {
  void playAudio(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Widget bulidnotes({int number, Color color}) {
    return Expanded(
      child: Card(
        color: color,
        child: ListTile(
          onTap: () {
            playAudio(number);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal[800],
          title: Text(
            'Notes',
            style: TextStyle(
              fontFamily: 'Pacifico',
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              bulidnotes(color: Colors.red, number: 1),
              bulidnotes(color: Colors.blue, number: 2),
              bulidnotes(color: Colors.brown, number: 3),
              bulidnotes(color: Colors.teal, number: 4),
              bulidnotes(color: Colors.pink, number: 5),
              bulidnotes(color: Colors.limeAccent, number: 6),
              bulidnotes(color: Colors.deepPurple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
