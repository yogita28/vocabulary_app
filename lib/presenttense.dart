import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Presentt extends StatefulWidget {
  @override
  _PresenttState createState() => _PresenttState();
}

class _PresenttState extends State<Presentt> {
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
            'Present Tense',
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
            'images/present.png',
            width: 70,
            height: 70,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        commonClass.buildType(txt: 'Present Tense'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'A tense expressing an action that is currently going on or habitually performed, or a state that currently or generally exists.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.London is a large city'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.She enjoys playing the piano.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(txt: 'These are simple sentences'),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Simple Present Tense'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildKey(
            txt:
                'Simple Present Tense is used to describe habits, unchanging situations, general truths, and fixed arrangements. '),
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
        commonClass.buildFormula(txt: 'Formula -  subject + verb1 + object'),
        SizedBox(
          height: 5,
        ),
        commonClass.buildText(
            txt: '(If the subject is plural (I, You, We, They))'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Formula -  subject + verb1(s or es) + object'),
        SizedBox(
          height: 5,
        ),
        commonClass.buildText(txt: '(If the subject is singular(He, She, It))'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.They play football.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.He plays football.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.They go to the market.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.He go to school every morning.'),
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
            child: commonClass.buildText(txt: 'Incorrect (goes)')),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Present Perfect'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'The present perfect simple expresses an action that is still going on or that stopped recently, but has an influence on the present.'),
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
            txt: 'subject + have(helping verb) + verb3 + object'),
        SizedBox(
          height: 5,
        ),
        commonClass.buildText(
            txt: '(If the subject is plural (I, You, We, They))'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'subject + has(helping verb) + verb3 + object'),
        SizedBox(
          height: 5,
        ),
        commonClass.buildText(txt: '(If the subject is singular(He, She, It))'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.People have traveled to the Moon.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.Nobody has ever climbed that mountain.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.I have taken dinner.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.She has written a letter.'),
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
        commonClass.buildType(txt: 'Present Continuous Tense'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildKey(
            txt:
                'Present continuous tense expresses the ongoing action or task of the present. It is also called present progressive tense'),
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
            txt: 'subject + am/are + verb1 + ing + object'),
        SizedBox(
          height: 5,
        ),
        commonClass.buildText(
            txt: '(If the subject is plural (I, You, We, They))'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(txt: 'subject + is + verb1 + ing + object'),
        SizedBox(
          height: 5,
        ),
        commonClass.buildText(txt: '(If the subject is singular(He, She, It))'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.We are performing our duty at the moment.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.The climate is getting hotter each year'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.He is going to the hill station next week.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.Julia is making a sponge cake right now.'),
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
            child: commonClass.buildText(txt: 'Correct !')),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Present Perfect Continuous Tense'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'Present Perfect Continuous Tense (present perfect progressive tense) is used to express the action or task that started in the past and continues in present.'),
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
                'subject + have(helping verb) + been + verb1 + ing + object + time reference'),
        SizedBox(
          height: 5,
        ),
        commonClass.buildText(
            txt: '(If the subject is plural (I, You, We, They))'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt:
                'subject + has(helping verb) + been + verb1 + ing + object + time reference'),
        SizedBox(
          height: 5,
        ),
        commonClass.buildText(txt: '(If the subject is singular(He, She, It))'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.She has been kneading the floor.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.He has been playing football for two hours.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.The child has been studied since morning.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.I have been playing my favorite game for 2 hours.'),
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
            child: commonClass.buildText(txt: 'Incorrect (studying)')),
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
