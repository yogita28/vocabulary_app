import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Prepositions extends StatefulWidget {
  @override
  _PrepositionsState createState() => _PrepositionsState();
}

class _PrepositionsState extends State<Prepositions> {
  var tcVisibility = false;
  var ttVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Prepositions',
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
              'images/prepo.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt:
                'A preposition is a word (usually a short word) that shows the relationship between two other nearby words.',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
            txt:
                'Identify the prepositions in the following sentences given below-',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt: '1.He is the President of the United States. ',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt: '2.We jumped in the lake located near hills.',
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
              visible: ttVisibility, child: commonClass.buildText(txt: 'of')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: ttVisibility, child: commonClass.buildText(txt: 'in')),
          SizedBox(
            height: 30,
          ),
          commonClass.buildBold(
              txt:
                  'There are three types of prepositions, including time prepositions, place prepositions, and direction prepositions.'),
          SizedBox(
            height: 30,
          ),
          commonClass.buildKey(
              txt:
                  'Time prepositions are those such as before, after, during, and until; place prepositions are those indicating position, such as around, between, and against; and direction prepositions are those indicative of direction, such as across, up, and down.')
        ],
      ),
    );
  }
}
