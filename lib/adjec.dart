import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Adjective extends StatefulWidget {
  @override
  _AdjectiveState createState() => _AdjectiveState();
}

class _AdjectiveState extends State<Adjective> {
  var tcVisibility = false;
  var ttVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Adjectives',
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
      padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0, bottom: 40),
      child: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/adjec.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt:
                'Adjectives are words that describe or modify another person or thing in the sentence.',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
            txt:
                'Identify the adjectives in the following sentences given below-',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt: '1.She is as bright as her mother.',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt: '2.Gladys is the richest woman in the town.',
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
              visible: tcVisibility,
              child: commonClass.buildText(txt: 'as bright as')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility,
              child: commonClass.buildText(txt: 'richest')),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
              txt:
                  'Adjectives can be used to describe taste, touch, sound, color, size, shape, amount, emotion, person, appearance and situations. '),
          SizedBox(
            height: 20,
          ),
          commonClass.buildKey(
              txt:
                  'Bitter, Spicy, Sharp, Greasy, Screeching, Silent, Black, Blue, Jumbo, Thin, Round, Square, Early, Late, Limited, Some, Kind, Lively, Famous, Ambitious, Elegant, Smiling, Accidental, Nutritious, '),
          SizedBox(
            height: 25,
          ),
          commonClass.buildText(txt: 'These are some examples of adjectives.')
        ],
      ),
    );
  }
}
