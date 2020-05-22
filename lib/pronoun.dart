import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Pronoun extends StatefulWidget {
  @override
  _PronounState createState() => _PronounState();
}

class _PronounState extends State<Pronoun> {
  var tcVisibility = false;
  var ttVisibility = false;
  var tt1Visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Pronoun',
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
      padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0, bottom: 35),
      child: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/pronoun.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt:
                'A pronoun is a word used in place of a noun (or a noun phrase). ',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
            txt:
                'Identify the pronouns in the following sentences given below-',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt:
                '1.Maria loves Saturday.It is the day she gets her pocket money. ',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt: '2.The driver who ran through the stop sign was careless.',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt:
                '3.Education is the most powerful weapon which you can use to change the world.',
          ),
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
              visible: tcVisibility, child: commonClass.buildText(txt: 'she')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility, child: commonClass.buildText(txt: 'who')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility,
              child: commonClass.buildText(txt: 'which')),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
            txt: 'Pronouns make sentences less cumbersome and less repetitive.',
          ),
          SizedBox(
            height: 20,
          ),
          commonClass.buildBold(
            txt: 'Identify the pronouns in the paragraph given below-',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt:
                'The 8-mile walk passes through meadows and woodland. It takes in many points of interest including the local airfield, which played an important role during World War 2.',
          ),
          SizedBox(
            height: 25,
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
              child: commonClass.buildText(txt: 'It, which')),
        ],
      ),
    );
  }
}
