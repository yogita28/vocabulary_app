import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Adverb extends StatefulWidget {
  @override
  _AdverbState createState() => _AdverbState();
}

class _AdverbState extends State<Adverb> {
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
            'Adverb',
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
      padding: EdgeInsets.all(14.0),
      child: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/adverb.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
              txt:
                  'An adverb is a word used to modify a verb, an adjective, or another adverb.'),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
            txt: 'Identify the adverbs in the following sentences given below-',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt: '1.She is an extremely quick swimmer.',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(txt: '2.John answered the question correctly.'),
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
              child: commonClass.buildText(txt: 'extremely')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility,
              child: commonClass.buildText(txt: 'correctly')),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
            txt:
                'In the examples above, every adverb is a single word, but an adverb can be made up of more than one word.',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt: '1.He ran when the police arrived.',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt: '2.She ran quicker than me.',
          ),
          SizedBox(
            height: 30.0,
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
              child: commonClass.buildText(txt: 'when the police arrived')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: ttVisibility,
              child: commonClass.buildText(txt: 'quicker than me')),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
