import 'package:Gambing/question.dart';
class Questionbank{
  int _questionNumber = 0;
  int _score=1;
  List <Question> _questionBank = [
    Question('The capital of Libya is Benghazi.', false),
    Question('Albert Einstein was awarded the Nobel Prize in Physics.',true),
    Question('Baby koalas are called joeys.',true),
    Question('Gone with the Wind takes place in Savannah, Georgia.',false),
    Question('Brazil is the only country in the Americas whose official language is Portuguese.',true),
    Question('The American Civil War ended in 1776.',false),
    Question('There are seven red stripes in the United States flag.',true),
    Question('Italy hosted the FIFA World Cup in 2006.',false),
    Question('Polo is not an Olympic sport.',true),
    Question('There has never been a woman chess master.',false),
    Question('Heliport is Airport of Helicopter.',true),
    Question('Game of throne end in the season nine.',false),
  ];
  void questionRange(){
    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }
  String get getQuestionText => _questionBank[_questionNumber].questionText;
  bool get getQuestionAnswer => _questionBank[_questionNumber].questionAnswer;
  bool isFinish(){
    if(_questionNumber == _questionBank.length-1) {
      return true;
    }else {
      return false;
    }
  }
  void reset(){
    _questionNumber = 0 ;
    _score = 1;
  }
  int get score => _score++;
}

