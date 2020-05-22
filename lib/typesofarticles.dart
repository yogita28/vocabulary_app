import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class TypesofArticles extends StatefulWidget {
  @override
  _TypesofArticlesState createState() => _TypesofArticlesState();
}

class _TypesofArticlesState extends State<TypesofArticles> {
  var ttVisibility = false;
  var tcVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Types of Articles',
            style: TextStyle(
              fontFamily: 'Cambria',
              fontSize: 25.0,
            ),
          ),
        ),
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
            'images/article.png',
            width: 70,
            height: 70,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        commonClass.buildType(txt: 'Definite Article'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'The definite article is the word the. It limits the meaning of a noun to one particular thing.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.Place all the books and colors on the yellow table.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.Please give me the red hammer; the blue one is too small.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(txt: 'Here, the word "the" is definite article.'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildBold(
            txt:
                'Identify the definite articles in the sentences given below -'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(txt: '1.The rose has beautiful smell. '),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.He is the first man to win Oscar award.'),
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
            visible: ttVisibility, child: commonClass.buildText(txt: 'The')),
        SizedBox(
          height: 7,
        ),
        Visibility(
            visible: ttVisibility, child: commonClass.buildText(txt: 'the')),
        SizedBox(
          height: 35,
        ),
        commonClass.buildType(txt: 'Indefinite Article'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'The indefinite article takes two forms. It’s the word "a" when it precedes a word that begins with a consonant. It’s the word "an" when it precedes a word that begins with a vowel.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.Mrs. Wallace is buying a newspaper.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.Nothing is more beautiful than an eagle.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(
            txt: 'Here, "a" and "an" are indefinite articles.'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildBold(
            txt:
                'Identify the indefinite articles in the sentences given below -'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(txt: '1.Mr. Smith rides a bicycle.'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(txt: '2.Frank always carries an umbrella.'),
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
            visible: tcVisibility, child: commonClass.buildText(txt: 'a')),
        SizedBox(
          height: 7,
        ),
        Visibility(
            visible: tcVisibility, child: commonClass.buildText(txt: 'an')),
      ]),
    );
  }
}
