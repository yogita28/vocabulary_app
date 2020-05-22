import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocabs/overlay.dart';
import 'package:vocabs/scorepage.dart';
import 'dart:async';
import 'question.dart';
import 'questionList.dart';
import 'questionbox.dart';
import 'dart:io';

class QuizEone extends StatefulWidget {
  @override
  _QuizEoneState createState() => _QuizEoneState();
}

class _QuizEoneState extends State<QuizEone> {
  _QuizEoneState() {
    init();
  }

  Question _currentQuestion;
  QuestionList _quizQuestions = new QuestionList([
    new Question("The activity of buying and selling goods and services.",
        "Advice", "Business", "Company", "Exchange", "B"),
    new Question("The process in which air goes into and out of your lungs.",
        "Breathing", "Pollution", "Fire", "Nitrogen", "A"),
    new Question(
        "To harm or spoil something.", "Deal", "Damage", "Doubt", "Fear", "B"),
    new Question("Food made from flour, water and usually yeast is called as",
        "Bread", "Coffee", "Toast", "Noodles", "A"),
    new Question(
        "A journey in an aircraft.", "Bird", "Growth", "Flight", "Guide", "C"),
    new Question(
        "A period of 60 minutes.", "Hour", "Seconds", "Day", "Week", "A"),
    new Question("A group of symbols that make a mathematical statement",
        "Formula", "Addition", "Graphs", "Line", "A"),
    new Question(
        "The activity of making drawings, paintings, sculptures is called ",
        "Copy",
        "Photo",
        "Art",
        "Book",
        "C"),
    new Question("The time when a young baby comes out of its mother’s body.",
        "B.C.", "Century", "A.C.", "Birth", "D"),
    new Question("A pale yellow food contains fat and is made from cream",
        "Pizza", "Butter", "Cake", "Ice-Cream", "B"),
    new Question("The planet that comes between Venus and Mars", "Mercury",
        "Earth", "Saturn", "Jupiter", "B"),
    new Question("To suddenly go down onto the ground", "Fall", "Move", "Fail",
        "Shift", "A"),
    new Question(
        "An area of water protected from the sea where ships and boats can shelter",
        "Cabin",
        "Harbour",
        "Showroom",
        "Parking",
        "B"),
    new Question("Guitar, Drum, Piano are examples of ", "Places",
        "Instruments", "Assets", "Folks", "B"),
    new Question("The act of travelling from one place to another", "Passing",
        "Pioneer", "Journey", "Holiday", "C"),
  ]);

  int _questionNumber = 0;
  int _score = 0;
  bool _isCorrect;
  bool _overlayVisible;

  void init() {
    _overlayVisible = false;
    _currentQuestion = _quizQuestions.nextQuestion;
    _questionNumber = _quizQuestions.questionNumber;
  }

  void choiceHandler(String choice) {
    if (_questionNumber == _quizQuestions.length) {
      Timer(
          Duration(milliseconds: 800),
          () => this.setState(() {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ScorePage(_score, _quizQuestions.length)));
              }));
    }

    _isCorrect = (choice == _currentQuestion.correctChoice);
    _score = (_isCorrect) ? _score + 1 : _score;

    this.setState(() {
      _overlayVisible = true;
    });
    Timer(
        Duration(milliseconds: 800),
        () => this.setState(() {
              init();
            }));
  }

  Column createquizQuestion(Question obj) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            new QuestionBox(Color.fromRGBO(0, 53, 99, 1), "A", obj.choiceA, () {
              choiceHandler("A");
            }),
            new QuestionBox(Color.fromRGBO(0, 53, 99, 1), "B", obj.choiceB, () {
              choiceHandler("B");
            }),
          ],
        ),
        Row(
          children: <Widget>[
            new QuestionBox(Color.fromRGBO(0, 53, 99, 1), "C", obj.choiceC, () {
              choiceHandler("C");
            }),
            new QuestionBox(Color.fromRGBO(0, 53, 99, 1), "D", obj.choiceD, () {
              choiceHandler("D");
            }),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/begquiz.png'),
              fit: BoxFit.cover,
            ),
          ), //BoxDecoration
          constraints: BoxConstraints.expand(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Total 15',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 53, 99, 10),
                        fontFamily: 'Handlee',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: Container(
                      color: Color.fromRGBO(0, 53, 99, 10),
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          'Question ' + _questionNumber.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Handlee',
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Color.fromRGBO(0, 83, 119, 10),
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          top: 10.0, left: 15.0, right: 15.0, bottom: 10),
                      child: Center(
                        child: Text(
                          _currentQuestion.questionText,
                          style: TextStyle(
                            fontFamily: 'Handlee',
                            color: Colors.grey[200],
                            fontSize: 25.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  createquizQuestion(_currentQuestion),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  _overlayVisible
                      ? new CustomOverlay(_isCorrect)
                      : new Container(),
                ],
              ),
            ),
          ), //Column
        ),
      ),
    );
  }
}
