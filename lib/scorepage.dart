import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main2.dart';

class ScorePage extends StatelessWidget {
  final int _score;
  final totalQuestions;
  ScorePage(this._score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/score.png'),
            fit: BoxFit.cover,
          ),
        ), //BoxDecoration

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/troph.png',
                width: 250.0,
                height: 130.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'YOUR SCORE',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cambria',
                    wordSpacing: 5.0,
                    letterSpacing: 0.4),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                _score.toString() + "/" + totalQuestions.toString(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                  icon: Icon(Icons.refresh),
                  iconSize: 80.0,
                  color: Colors.white,
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainPage()))),
            ],
          ),
        ),
      ),
    );
  }
}
