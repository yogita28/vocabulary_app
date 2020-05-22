import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Futuret extends StatefulWidget {
  @override
  _FuturetState createState() => _FuturetState();
}

class _FuturetState extends State<Futuret> {
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
            'Future Tense',
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
            'images/future.png',
            width: 70,
            height: 70,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        commonClass.buildType(txt: 'Future Tense'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt: 'Future tense is used to express the actions in the future. '),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.She will join the navy.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.He will attend the meeting tomorrow.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(txt: 'These are simple sentences'),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Simple Future Tense'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildKey(
            txt:
                'Simple future tense is used to express the actions in the future.'),
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
        commonClass.buildFormula(txt: 'subject + will + verb1 + object'),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.I will go to Thailand.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.He will attend the meeting tomorrow.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.They will bake the pies.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.We will arrive in the evening.'),
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
            child: commonClass.buildText(txt: 'Correct !')),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Future Perfect'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'Future perfect tense is used to express the action that will be completed in future at some time.'),
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
            txt: 'subject + will + have(helping verb) + verb3 + object'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.She Will have finished her Diploma before 21.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.I Will Have Finished Your Work On Wednesday.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.I Will have written a letter'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.He Will have learnt English'),
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
        commonClass.buildType(txt: 'Future Continuous Tense'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildKey(
            txt:
                'Future continuous tense expresses the action that will be ongoing at some time in the future. '),
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
            txt: 'subject + will be + verb1 + ing + object'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.He will be traveling to Venice.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.They will be playing table tennis.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildFormula(
            txt: 'Which of the following sentences are correct.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.It will be raining all day tomorrow.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.She will learning French.'),
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
            child: commonClass.buildText(txt: 'Incorrect (will be)')),
        SizedBox(
          height: 50,
        ),
        commonClass.buildType(txt: 'Future Perfect Continuous Tense'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'Future perfect continuous tense is used to express the ongoing action that will be completed in future before a certain time.'),
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
                'subject + will have been + been + verb1 + ing + object + time reference'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.He will have been playing football for two hours.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.Henry will have been studying since morning.'),
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
                '1.We will have been studying at this glorious university for three years.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt:
                '2.She will have been living in Ireland for ten years at that point.'),
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
