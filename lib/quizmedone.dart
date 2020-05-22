import 'package:flutter/material.dart';
import 'package:vocabs/overlay.dart';
import 'package:vocabs/scorepage.dart';
import 'dart:async';
import 'question.dart';
import 'questionList.dart';
import 'questionbox.dart';

class Quizmedone extends StatefulWidget {
  @override
  _QuizmedoneState createState() => _QuizmedoneState();
}

class _QuizmedoneState extends State<Quizmedone> {
  _QuizmedoneState() {
    init();
  }

  Question _currentQuestion;
  QuestionList _quizQuestions = new QuestionList([
    new Question(
        "Group of government officials, headed by an ambassador, who represent their government in a foreign country",
        "Agency",
        "Embassy",
        "Company",
        "Authority",
        "B"),
    new Question(
        "Go on board a ship or aircraft", "Fly", "Land", "Embark", "Stay", "C"),
    new Question("Something that you want and plan to do", "Intention",
        "Chance", "Neglect", "Aimless", "A"),
    new Question("The state of being married", "Separate", "Matrimony",
        "Functions", "Divorce", "B"),
    new Question("A large or important church often having cathedral status.",
        "Tomb", "Cabin", "Secular", "Minster", "D"),
    new Question(
        "A bird or an animal that feeds on dead animals that it has not killed itself",
        "Scavenger",
        "Carnivore",
        "Herbivore",
        "Omnivore",
        "A"),
    new Question("A sledge drawn by horses or reindeer,", "Onfoot", "Cars",
        "Sleigh", "Cart", "C"),
    new Question("To make someone excited and interested about something",
        "Deter", "Halt", "Release", "Stimulate", "D"),
    new Question("To walk in a way that does not seem controlled", "Overlook",
        "Continue", "Stumble", "Infallibility", "C"),
    new Question(
        "Fail to resist pressure, temptation, or some other negative force",
        "Bear",
        "Defend",
        "Refuse",
        "Succumb",
        "D"),
    new Question(
        "A weapon used in the past consisting of a pole with three sharp metal points on the end",
        "Sword",
        "Trident",
        "Weapon",
        "Fork",
        "B"),
    new Question("A state of great disturbance, confusion, or uncertainty",
        "Composure", "Turmoil", "Content", "Agreement", "B"),
    new Question("Make someone lose courage or confidence", "Unnerve", "Incite",
        "Soothe", "Clarify", "A"),
    new Question(
        "A fire or light set up in a high or prominent position as a warning, signal,",
        "Dim",
        "Extinguish",
        "Beacon",
        "Veil",
        "C"),
    new Question("A person who illegally enters buildings and steals things",
        "Becon", "Walloper", "Demon", "Burglar", "D"),
    new Question("Done without being planned or rehearsed.", "Indulge",
        "Careless", "Impromptu", "Deliberate", "C"),
    new Question("Soldiers marching or fighting on foot;", "Infantry",
        "Cavalry", "Distinguish", "Unarmed", "A"),
    new Question(
        "An occasion when someone goes into a place or situation where they are not wanted or expected to be",
        "Arouse",
        "Intrusion",
        "Retreat",
        "Esteem",
        "B"),
    new Question(
        "A regular geometrical arrangement of points or objects over an area or in space",
        "Solid",
        "Wallpaper",
        "Lattice",
        "Foil",
        "C"),
    new Question("Something that has many parts or facets", "Unique",
        "Manifold", "Distinct", "Solitary", "B"),
    new Question("Very strange or unusual", "Bizzare", "Customary", "Serious",
        "Sensible", "A"),
    new Question("Excessive pride in oneself.", "Unique", "Humility", "Modesty",
        "Conceit", "D"),
    new Question("Express complete disapproval of", "Condemn", "Commend",
        "Acquit", "Praise", "A"),
    new Question("Infection of the intestines resulting in severe diarrhoea",
        "Cancer", "Tightness", "Dysentery", "Immovable", "C"),
    new Question("Person who is famous and respected within a particular sphere.",
        "Ordinary", "Inferior", "Obscure", "Eminent", "D"),
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
              image: AssetImage('images/greenmedback.png'),
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
                    'Total 25',
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
