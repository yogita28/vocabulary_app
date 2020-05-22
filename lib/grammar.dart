import 'package:flutter/material.dart';
import 'package:vocabs/adjec.dart';
import 'package:vocabs/adverb.dart';
import 'package:vocabs/article.dart';
import 'package:vocabs/noun.dart';
import 'package:vocabs/prepo.dart';
import 'package:vocabs/pronoun.dart';
import 'package:vocabs/tenses.dart';
import 'package:vocabs/verb.dart';

class Grammar extends StatefulWidget {
  @override
  _GrammarState createState() => _GrammarState();
}

class _GrammarState extends State<Grammar> {
  String txt = '';
  GestureDetector buildGesture({Image image, String txt}) {
    return GestureDetector(
      child: Card(
        color: Colors.grey[200],
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 70.0,
                height: 70.0,
                child: image,
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                txt,
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Cambria',
                    color: Color.fromRGBO(0, 139, 139, 1)),
              ),
            ], //Widget
          ), //Row
        ), //padding
      ), //Card
      onTap: () {
        if (txt == 'Noun') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Noun()));
        } else if (txt == 'Adverb') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Adverb()));
        } else if (txt == 'Verb') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Verb()));
        } else if (txt == 'Pronoun') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pronoun()));
        } else if (txt == 'Article') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Article()));
        } else if (txt == 'Prepositions') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Prepositions()));
        } else if (txt == 'Adjectives') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Adjective()));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Tenses()));
        }
      },
    ); //GestureDetector
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Grammar',
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
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          buildGesture(image: Image.asset('images/noun.png'), txt: 'Noun'),
          buildGesture(image: Image.asset('images/adverb.png'), txt: 'Adverb'),
          buildGesture(image: Image.asset('images/verb.png'), txt: 'Verb'),
          buildGesture(
              image: Image.asset('images/pronoun.png'), txt: 'Pronoun'),
          buildGesture(
              image: Image.asset('images/article.png'), txt: 'Article'),
          buildGesture(
              image: Image.asset('images/prepo.png'), txt: 'Prepositions'),
          buildGesture(
              image: Image.asset('images/adjec.png'), txt: 'Adjectives'),
          buildGesture(image: Image.asset('images/tenses.png'), txt: 'Tenses'),
        ],
      ), //Column
    ); //padding,
  }
}
