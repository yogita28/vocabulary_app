import 'package:flutter/material.dart';
import 'package:vocabs/quizmedone.dart';
import 'package:vocabs/quizmedtwo.dart';

class QuizMedium extends StatefulWidget {
  @override
  _QuizMediumState createState() => _QuizMediumState();
}

class _QuizMediumState extends State<QuizMedium> {
  GestureDetector buildGesture({Image image, String txt}) {
    return GestureDetector(
      child: Center(
        child: Container(
          child: image,
          width: 240,
          height: 160,
        ),
      ), //Card
      onTap: () {
        if (txt == 'MedOne') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Quizmedone()));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Quizmedtwo()));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(15, 42, 50, 1),
        centerTitle: true,
        title: Text(
          'Quiz Medium',
          style: TextStyle(
              fontFamily: 'Cambria',
              fontSize: 25.0,
              color: Color.fromRGBO(76, 154, 45, 1)),
        ),
      ), //AppBar

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/mediumback.png'),
            fit: BoxFit.cover,
          ),
        ), //BoxDecoration
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildGesture(
                  image: Image.asset('images/medonee.png'),
                  txt: 'MedOne',
                ),
                buildGesture(
                  image: Image.asset('images/medtwoo.png'),
                  txt: 'EasyTwo',
                ),
              ],
            ), //Column
          ), //padding,,
        ),
      ),
    );
  }
}
