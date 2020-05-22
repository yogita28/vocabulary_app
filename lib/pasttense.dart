import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Pastt extends StatefulWidget {
  @override
  _PasttState createState() => _PasttState();
}

class _PasttState extends State<Pastt> {
  var tcVisibility = false;
  var tc1Visibility = false;
  var ttVisibility = false;
  var tt1Visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Past Tense',
            style: TextStyle(
              fontFamily: 'Cambria',
              fontSize: 25.0,
            ),
          ),
        ), //AppBar
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate(
              List.generate(1, (int index) {
                return _gardview(index);
              }),
            ))
          ],
        ));
  }

  Widget _gardview(int index) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0, bottom: 25),
      child: Column(children: <Widget>[
        Center(
          child: Image.asset(
            'images/past.png',
            width: 70,
            height: 70,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        commonClass.buildType(txt: 'Past Tense'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                ' Past Tense is used to talk about something that started and finished at a definite time in the past.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.He won the silver medal.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.Wolfgang entered a hula hoop contest.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(txt: 'These are simple sentences'),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Simple Past Tense'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildKey(
            txt:
                'The simple past is a verb tense that is used to talk about things that happened or existed before now.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(txt: 'verb1 - First form of verb'),
        SizedBox(
          height: 3,
        ),
        commonClass.buildText(txt: 'verb2 - Second form of verb'),
        SizedBox(
          height: 3,
        ),
        commonClass.buildText(txt: 'verb3 - Third form of verb'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(txt: 'Formula -  subject + verb2 + object'),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.He went to the hill station.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.Julia made a sponge cake.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.He wrote an interesting story.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.She waked up early in the morning.'),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          color: Color.fromRGBO(0, 139, 139, 10),
          child: Text(
            'Answer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          onPressed: () {
            setState(() {
              ttVisibility = true;
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
            visible: ttVisibility,
            child: commonClass.buildText(txt: 'Correct !')),
        SizedBox(
          height: 7,
        ),
        Visibility(
            visible: ttVisibility,
            child: commonClass.buildText(txt: 'Incorrect (woke up)')),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Past Perfect'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'Past perfect tense indicates the finished or completed actions of the past.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(txt: 'verb1 - First form of verb'),
        SizedBox(
          height: 3,
        ),
        commonClass.buildText(txt: 'verb2 - Second form of verb'),
        SizedBox(
          height: 3,
        ),
        commonClass.buildText(txt: 'verb3 - Third form of verb'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'subject + had(helping verb) + verb3 + object'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.The players had lost heart before the match finished.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt:
                '2.Chris had completed the assignment before he went to school.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.They had shifted to a new home.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.He had earned a lot of money.'),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          color: Color.fromRGBO(0, 139, 139, 10),
          child: Text(
            'Answer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          onPressed: () {
            setState(() {
              tcVisibility = true;
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
            visible: tcVisibility,
            child: commonClass.buildText(txt: 'Correct !')),
        SizedBox(
          height: 7,
        ),
        Visibility(
            visible: tcVisibility,
            child: commonClass.buildText(txt: 'Correct !')),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Past Continuous Tense'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildKey(
            txt:
                'Past continuous tense expresses the actions or task that were ongoing in the past.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(txt: 'verb1 - First form of verb'),
        SizedBox(
          height: 3,
        ),
        commonClass.buildText(txt: 'verb2 - Second form of verb'),
        SizedBox(
          height: 3,
        ),
        commonClass.buildText(txt: 'verb3 - Third form of verb'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'subject + was/were + verb1 + ing + object'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.He was traveling to Venice.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.They were playing table tennis.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.I was studying hard for exams.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.I was go to work every day.'),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          color: Color.fromRGBO(0, 139, 139, 10),
          child: Text(
            'Answer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          onPressed: () {
            setState(() {
              tt1Visibility = true;
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
            visible: tt1Visibility,
            child: commonClass.buildText(txt: 'Correct !')),
        SizedBox(
          height: 7,
        ),
        Visibility(
            visible: tt1Visibility,
            child: commonClass.buildText(txt: 'Incorrect (going)')),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Past Perfect Continuous Tense'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'Past Perfect Continuous Tense is used to express the action that started in the past and continued in the past for some time.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(txt: 'verb1 - First form of verb'),
        SizedBox(
          height: 3,
        ),
        commonClass.buildText(txt: 'verb2 - Second form of verb'),
        SizedBox(
          height: 3,
        ),
        commonClass.buildText(txt: 'verb3 - Third form of verb'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt:
                'subject + had(helping verb) + been + verb1 + ing + object + time reference'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.He had been playing football for two hours.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.The child had been studying since morning.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt:
                '1.We had been watching movies in this Cineplex for three hours.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.I had been listening to melodious songs for two hours.'),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          color: Color.fromRGBO(0, 139, 139, 10),
          child: Text(
            'Answer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          onPressed: () {
            setState(() {
              tc1Visibility = true;
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
            visible: tc1Visibility,
            child: commonClass.buildText(txt: 'Correct !')),
        SizedBox(
          height: 7,
        ),
        Visibility(
            visible: tc1Visibility,
            child: commonClass.buildText(txt: 'Correct !')),
      ]),
    );
  }
}
