import 'package:flutter/material.dart';
import 'package:vocabs/quizeasyone.dart';
import 'package:vocabs/quizeasytwo.dart';

class QuizEasy extends StatefulWidget {
  @override
  _QuizEasyState createState() => _QuizEasyState();
}

class _QuizEasyState extends State<QuizEasy> {
  GestureDetector buildGesture({Image image, String txt}) {
    return GestureDetector(
      child: Center(
        child: Container(
          child: image,
          width: 240,
          height: 160,
        ),
      ),
      onTap: () {
        if (txt == 'EasyOne') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizEone()));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizEtwo()));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(69, 105, 144, 1),
        centerTitle: true,
        title: Text(
          'Quiz Easy',
          style: TextStyle(
            fontFamily: 'Cambria',
            fontSize: 25.0,
            color: Color.fromRGBO(244, 159, 10, 1),
          ),
        ),
      ), //AppBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/easybackk.png'),
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
                  image: Image.asset('images/easyone.png'),
                  txt: 'EasyOne',
                ),
                buildGesture(
                  image: Image.asset('images/easytwo.png'),
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
