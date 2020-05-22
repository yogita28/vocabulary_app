import 'package:flutter/material.dart';
import 'question.dart';
import 'questionList.dart';
import 'questionbox.dart';
import 'package:vocabs/scorepage.dart';
import 'dart:async';
import 'package:vocabs/overlay.dart';

class QuizEtwo extends StatefulWidget {
  @override
  _QuizEtwoState createState() => _QuizEtwoState();
}

class _QuizEtwoState extends State<QuizEtwo> {
  _QuizEtwoState() {
    init();
  }

  Question _currentQuestion;
  QuestionList _quizQuestions = new QuestionList([
    new Question(
        "Begin to move more quickly or increase in rate or amount is called as",
        "Addition",
        "Multiply",
        "Accelerate",
        "Retard",
        "C"),
    new Question(
        "The action of making something poorer in quality by the addition of another substance.",
        "Adulteration",
        "Sterile",
        "Pure",
        "Strong",
        "A"),
    new Question("Present a theory in further detail", "General", "Usual",
        "Elaborate", "Simple", "C"),
    new Question(
        "The events that will necessarily happen to a particular person or thing in the future",
        "Destiny",
        "Choice",
        "Concept",
        "Free Will",
        "A"),
    new Question("Record accurately in words or pictures.", "Capture",
        "Release", "Grant", "Yield", "A"),
    new Question("To dull or destroy the luster by air, dust, or dirt",
        "Improve", "Tarnish", "Assist", "Mend", "B"),
    new Question("The outer limits or edge of an area or object", "Within",
        "Core", "Interior", "Periphery", "D"),
    new Question("Pellets of frozen rain which fall in showers ", "Hail", "Fog",
        "Rain", "Smog", "A"),
    new Question("Determined in character, action, or ideas", "Cautious",
        "Resolute", "Afraid", "Cooperative", "B"),
    new Question("A pipe or hole through which water or gas may escape",
        "Entrance", "Solid", "Closure", "Outlet", "D"),
    new Question("A strong expression of public disapproval or anger", "Afraid",
        "Murmur", "Outcry", "Speak", "C"),
    new Question("To make a person feel uncomfortable or worried", "Injury",
        "Soothe", "Hearten", "Oppress", "D"),
    new Question("An outlying district of a city", "Metropolis", "Suburb",
        "Center", "Middle", "B"),
    new Question("Shorten something by cutting off the top or the end.",
        "Truncate", "Lengthen", "Extend", "Mixing", "A"),
    new Question("A small, quick movement up and down or from side to side",
        "Chuckle", "Wiggle", "Giggle", "Unwind", "B"),
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
