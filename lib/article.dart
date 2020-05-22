import 'package:flutter/material.dart';
import 'package:vocabs/typesofarticles.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  var tcVisibility = false;
  var ttVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Articles',
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
              'images/article.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt:
                'An article is a word that is used to specify definiteness of the noun.(a, an, the)',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildBold(
            txt:
                'Identify the articles in the following sentences given below-',
          ),
          SizedBox(
            height: 25,
          ),
          commonClass.buildKey(
            txt: '1.I love an apple pie after dinner.',
          ),
          SizedBox(
            height: 10,
          ),
          commonClass.buildKey(
            txt: '2.Please open the small box first.',
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
              visible: tcVisibility, child: commonClass.buildText(txt: 'an')),
          SizedBox(
            height: 7,
          ),
          Visibility(
              visible: tcVisibility, child: commonClass.buildText(txt: 'the')),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            color: Color.fromRGBO(220, 159, 10, 10),
            child: Text(
              'Types of Articles',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TypesofArticles()));
            },
          ),
        ],
      ),
    );
  }
}
