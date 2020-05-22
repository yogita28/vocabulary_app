import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocabs/typesofnoun.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Noun extends StatefulWidget {
  @override
  _NounState createState() => _NounState();
}

class _NounState extends State<Noun> {
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
            'Noun',
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
              'images/noun.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
              txt:
                  'Nouns are words that name people, animals, places, things or states.'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
              txt:
                  'Identify the nouns in the following sentences given below-'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(txt: '1.Sarah needs to replace her keyboard.'),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
              txt: '2.Be careful around that ratttlesnake !!!'),
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
              child: commonClass.buildText(txt: 'Sarah, keyboard')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility,
              child: commonClass.buildText(txt: 'rattlesnake')),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
              txt: 'Noun can have different roles in a sentence -'),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(txt: 'Consider the following sentence'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(txt: '1.Tom is a great singer and artist.'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildText(txt: '"Tom" is a noun in this sentence.'),
          SizedBox(
            height: 10,
          ),
          commonClass.buildText(
              txt: 'It is also the subject of this sentence.'),
          SizedBox(
            height: 30,
          ),
          commonClass.buildKey(
              txt:
                  'The subject refers to a person, place or thing that is doing something or being somethin in a sentence.'),
          SizedBox(
            height: 30,
          ),
          commonClass.buildBold(
              txt:
                  'Identify the nouns which are subjects in the following sentences given below-'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
              txt: '1.The scientist looked out of the window.'),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
              txt: '2.An orange cat was sitting on the grass.'),
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
              child: commonClass.buildText(txt: 'The scientist')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: ttVisibility,
              child: commonClass.buildText(txt: 'an orange cat')),
          SizedBox(
            height: 28,
          ),
          commonClass.buildKey(txt: 'Now, consider the following sentence'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(txt: '1.David met Lucy yesterday.'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildText(
              txt: '"David" and "Lucy" are nouns in this sentence.'),
          SizedBox(
            height: 10,
          ),
          commonClass.buildText(
              txt: '"Lucy" is also the object of this sentence.'),
          SizedBox(
            height: 30.0,
          ),
          commonClass.buildKey(
              txt:
                  'The object is the person or thing affected by the verb.An object can be a noun, a phrase, or a pronoun.'),
          SizedBox(
            height: 20.0,
          ),
          commonClass.buildBold(
              txt:
                  'Identify the nouns which are objects in the following sentences given below-'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(txt: '1.She closed the carton carefully.'),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
              txt: '2.Pauline has passed her mother a parcel.'),
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
              child: commonClass.buildText(txt: 'the carton')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tt1Visibility,
              child: commonClass.buildText(txt: 'her mother')),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            color: Color.fromRGBO(220, 159, 10, 10),
            child: Text(
              'Types of Noun',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TypesofNoun()));
            },
          ),
        ],
      ),
    );
  }
}
