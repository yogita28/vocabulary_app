import 'package:flutter/material.dart';
import 'package:vocabs/overlay.dart';
import 'package:vocabs/scorepage.dart';
import 'dart:async';
import 'question.dart';
import 'questionList.dart';
import 'questionbox.dart';

class Hardone extends StatefulWidget {
  @override
  _HardoneState createState() => _HardoneState();
}

class _HardoneState extends State<Hardone> {
  _HardoneState() {
    init();
  }

  Question _currentQuestion;
  QuestionList _quizQuestions = new QuestionList([
    new Question(
        "A person who is running away or hiding from the police or a dangerous situation",
        "Facing",
        "Lasting",
        "Fugitive",
        "Enduring",
        "C"),
    new Question("To do something awkwardly using your hands", "Fumble",
        "Patch", "Revamp", "Rectify", "A"),
    new Question("A small mark or spot", "Gob", "Pile", "Peck", "Fleck", "D"),
    new Question("Soft fibres from fabrics such as wool or cotton ", "Solid",
        "Fluff", "Inerrancy", "Strictness", "B"),
    new Question("A place of safety or refuge", "Crisis", "Haven", "Peril",
        "Menace", "B"),
    new Question("Writing or drawings made on a wall or other surface", "Mend",
        "Blank", "Plain", "Graffiti", "D"),
    new Question("Engage in a close fight or struggle without weapons",
        "Unlock", "Grapple", "Dodge", "Refuse", "B"),
    new Question("A person who knows a lot about food and cooking ", "Gorger",
        "Stuffer", "Gourmet", "Hog", "C"),
    new Question("A small bomb thrown by hand ", "Grenade", "Atombomb",
        "Nuclear", "Guidedbomb", "A"),
    new Question("To make a low, rough sound, usually in anger", "Mewl",
        "Whimper", "Whisper", "Growl", "D"),
    new Question(
        "A small nocturnal Old World mammal with a spiny coat and short legs",
        "Vaquita",
        "Hedgehog",
        "Sloth",
        "Porpoise",
        "B"),
    new Question(
        "A structure where bees live", "Hive", "Net", "Stable", "Sty", "A"),
    new Question("Chop or cut with an axe, pick, or other tool", "Wage", "Form",
        "Hew", "Model", "C"),
    new Question(
        "A person who lives alone and apart from the rest of society, especially for religious reasons",
        "Team",
        "Introvert",
        "Wanderlust",
        "Hermit",
        "D"),
    new Question(
        "Acting or done suddenly without any planning or consideration of the results",
        "Sensible",
        "Impulsive",
        "Deliberate",
        "Heedful",
        "B"),
    new Question(
        "Create and perform (music, drama, or verse) without preparation",
        "Ponder",
        "Improvise",
        "Premeditate",
        "Reconcile",
        "B"),
    new Question("Restore friendly relations between", "Reconcile", "Derange",
        "Disorient", "Unsettle", "A"),
    new Question(
        "Shake or tremble in speaking, typically through nervousness or emotion",
        "Be still",
        "Steady",
        "Quaver",
        "Hover",
        "C"),
    new Question("Strange, odd.", "Prosiac", "Typical", "Sane", "Queer", "D"),
    new Question("To move back or away", "Approach", "Intensify", "Recede",
        "Escalate", "C"),
    new Question(
        "Lean or lie back in a relaxed position with the back supported",
        "Recline",
        "Erect",
        "Antipathy",
        "Bulldoze",
        "A"),
    new Question("A means of raising money by selling numbered tickets",
        "Gleam", "Bounty", "Revile", "Raffle", "D"),
    new Question("Drink or eat something with a loud sucking noise", "Slick",
        "Slurp", "Beep", "Slob", "B"),
    new Question("Take in and understand fully", "Assimilate", "Bigamy",
        "Appease", "Amble", "A"),
    new Question("To be out of control and act in a wild or dangerous manner",
        "Flare", "Adjunct", "Amok", "Admonish", "C"),
    new Question("A small patch of light brown colour on the skin", "Lark",
        "Jest", "Gasp", "Freckle", "D"),
    new Question("The state of being very poor", "Penury", "Phial", "Affluence",
        "Wealthy", "A"),
    new Question("Give out sweat as a result of heat", "Sanction", "Permit",
        "Ingest", "Perspire", "D"),
    new Question("Reduce to fine particles.", "Assimilate", "Pulverize",
        "Appease", "Pucker", "B"),
    new Question("Lacking care or attention to duty", "Remiss", "Robe", "Sin",
        "Shaggy", "A"),
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
              image: AssetImage('images/lemoon.png'),
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
                    'Total 30',
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
