import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Verb extends StatefulWidget {
  @override
  _VerbState createState() => _VerbState();
}

class _VerbState extends State<Verb> {
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
            'Verb',
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
      child: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/verb.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          commonClass.buildKey(
            txt:
                'Verbs are the action words in a sentence that describe what the subject is doing.',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
            txt: 'Identify the verbs in the following sentences given below-',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt: '1.Jacob walks in the morning. ',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt: '2.They played football yesterday.',
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
                ttVisibility = true;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Visibility(
              visible: ttVisibility,
              child: commonClass.buildText(txt: 'walks')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: ttVisibility,
              child: commonClass.buildText(txt: 'played')),
          SizedBox(
            height: 30,
          ),
          commonClass.buildBold(
              txt:
                  'Verbs can express physical, mental actions and it can also express state of being.'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt: '1.She sells fruits and vegetables.',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt: '2.Peter guessed the right amount.',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt: '3.The doctor wrote the prescription.',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
              txt: '4.Edwina is the largest elephant in this area.'),
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
              child: commonClass.buildText(txt: 'sells')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility,
              child: commonClass.buildText(txt: 'guessed')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility,
              child: commonClass.buildText(txt: 'wrote')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility, child: commonClass.buildText(txt: 'is')),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
