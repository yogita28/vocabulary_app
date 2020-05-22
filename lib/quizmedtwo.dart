import 'package:flutter/material.dart';
import 'package:vocabs/overlay.dart';
import 'package:vocabs/scorepage.dart';
import 'dart:async';
import 'question.dart';
import 'questionList.dart';
import 'questionbox.dart';

class Quizmedtwo extends StatefulWidget {
  @override
  _QuizmedtwoState createState() => _QuizmedtwoState();
}

class _QuizmedtwoState extends State<Quizmedtwo> {
  _QuizmedtwoState() {
    init();
  }
  Question _currentQuestion;
  QuestionList _quizQuestions = new QuestionList([
    new Question("Expressing something forcibly and clearly.", "Indefinite",
        "Ambiguous", "Emphatic", "Idle", "C"),
    new Question("A personal follower of Christ during his life", "Antagonist",
        "Disciple", "Helper", "Opponent", "B"),
    new Question("Causing a mood of gloom or depression.", "Dismal", "Damage",
        "Doubt", "Fear", "A"),
    new Question("Giving or being a sign of future success.", "Auspicious",
        "Cheerless", "Wretched", "Grim", "A"),
    new Question("A prolonged period of abnormally low rainfall", "Flood",
        "Hurricane", "Drought", "Tsunami", "C"),
    new Question("Light rain falling in very fine drops.", "Emit", "Drizzle",
        "Pour", "Rainstorm", "B"),
    new Question("Speech or behavior that keeps the truth hidden", "Bluntness",
        "Deceitful", "Decency", "Sincerity", "B"),
    new Question("The action of freeing ", "Openness", "Exposure", "Liability",
        "Exemption", "D"),
    new Question("To break an egg so a baby animal can come out:", "Neutralise",
        "Expose", "Hinder", "Hatch", "D"),
    new Question("Unfriendliness or opposition", "Hostility", "Amiable",
        "Social", "Hospitable", "A"),
    new Question("Free from fault or blame", "Witness", "Flawed", "Impeccable",
        "Victim", "C"),
    new Question("A serious disagreement between people", "Conflict", "Calm",
        "Stability", "Concord", "A"),
    new Question("Impossible to solve or incapable of being dissolved ",
        "Practical", "Doable", "Insoluble", "Feasible", "C"),
    new Question("A lack of energy and enthusiasm.", "Vitality", "Lethargy",
        "Concern", "Vigor", "B"),
    new Question(
        "An infectious disease that damages a person's nerves and skin",
        "Malaria",
        "Gangrine",
        "Ringworm",
        "Leprosy",
        "D"),
    new Question("Fibrous connective tissue that connects bones to other bones",
        "Ligament", "Veins", "Cartilage", "Nerves", "A"),
    new Question(
        "A mad or silly person.", "Sapient", "Sane", "Loony", "Clever", "C"),
    new Question("A dummy used to display clothes in a shop window.", "Captor",
        "Worker", "Inactive", "Mannequin", "D"),
    new Question("A cloud of tiny water droplets", "Mist", "Filter", "Downfall",
        "Lucid", "A"),
    new Question(
        "A belief or idea", "Misconcept", "Notion", "Truth", "Concrete", "B"),
    new Question("A very unpleasant and painful or difficult experience",
        "Ordeal", "Argument", "Plea", "Punishment", "A"),
    new Question("More important than anything else", "Minor", "Trivial",
        "Subordinate", "Paramount", "D"),
    new Question("Never ending or changing.", "Unsteady", "Perpetual",
        "Transitory", "Temporary", "B"),
    new Question(
        "A long, thin, flat piece of timber, used especially in building and flooring.",
        "Egghead",
        "Paper",
        "Strap",
        "Plank",
        "D"),
    new Question("Clean and fresh as if new", "Spot", "Fragile", "Pristine",
        "Soiled", "C"),
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
