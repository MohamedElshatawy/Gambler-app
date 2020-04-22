import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Gambing/questionbank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Questionbank questBank = Questionbank();
  List<Icon> score = [];
  void checkAnswer(bool check) {
    setState(() {
      if (questBank.isFinish() == true) {
        Alert(
          context: context,
          title: 'Finish',
          desc: 'You\'ve reached the end of the quiz\n your Score : ${questBank.score}',
          image: Image.asset('images/success.png'),
          buttons: [
            DialogButton(
              color: Colors.teal[800],
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              width: 120.0,
            ),
          ],
        ).show();
        questBank.reset();
        score.clear();
      } else {
        bool correctAnswer = questBank.getQuestionAnswer;
        if (correctAnswer == check) {
          score.add(Icon(
            Icons.check,
            color: Colors.green,
          )
          );
          questBank.score;
        } else {
          score.add(Icon(
            Icons.close,
            color: Colors.red[800],
          ));
        }
        questBank.questionRange();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Quizer',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
            child: Center(
              child: Text(
                questBank.getQuestionText,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                checkAnswer(true);
              });
            },
            color: Colors.teal[800],
            child: Text(
              'True',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                checkAnswer(false);
              });
            },
            color: Colors.red[800],
            child: Text(
              'False',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            children: score,
          ),
        ],
      ),
    );
  }
}
