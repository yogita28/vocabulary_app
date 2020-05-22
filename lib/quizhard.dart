import 'package:flutter/material.dart';
import 'package:vocabs/hardone.dart';

class QuizHard extends StatefulWidget {
  @override
  _QuizHardState createState() => _QuizHardState();
}

class _QuizHardState extends State<QuizHard> {
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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Hardone()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(224, 159, 62, 1),
        centerTitle: true,
        title: Text(
          'Quiz Hard',
          style: TextStyle(
              fontFamily: 'Cambria',
              fontSize: 25.0,
              color: Color.fromRGBO(169, 27, 13, 1)),
        ),
      ), //AppBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/hardback.png'),
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
                  image: Image.asset('images/hardone.png'),
                  txt: 'EasyOne',
                ),
              ],
            ), //Column
          ), //padding,,
        ),
      ),
    );
  }
}
