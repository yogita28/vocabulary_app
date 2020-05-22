import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocabs/grammar.dart';
import 'package:vocabs/navdrawer.dart';
import 'package:vocabs/quizeasy.dart';
import 'package:vocabs/quizhard.dart';
import 'package:vocabs/quizmedium.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String txt = '';

  GestureDetector buildGesture({Image image, String txt}) {
    return GestureDetector(
      child: Container(
        child: image,
        width: 240.0,
        height: 160.0,
      ), //Card
      onTap: () {
        if (txt == 'Grammar') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Grammar()));
        } else if (txt == 'Easy') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizEasy()));
        } else if (txt == 'Medium') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizMedium()));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizHard()));
        }
      },
    );
  }

  Future<bool> _backButtonPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Are you sure ?',
              style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.9),
            ),
            content: Text(
              'You are going to exit the application',
              style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.9),
            ),
            actions: <Widget>[
              RaisedButton(
                color: Color.fromRGBO(0, 139, 139, 1),
                child: Text(
                  'No',
                  style: TextStyle(
                      fontFamily: 'Handlee',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.9),
                ),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              RaisedButton(
                color: Color.fromRGBO(0, 139, 139, 1),
                child: Text(
                  'Yes',
                  style: TextStyle(
                      fontFamily: 'Handlee',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.9),
                ),
                onPressed: () {
                  Navigator.of(context).pop(exit(0));
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Vocabs',
            style: TextStyle(
              fontFamily: 'Cambria',
              fontSize: 25.0,
            ),
          ),
        ), //AppBar
        drawer: MainDrawer(),
        body: WillPopScope(
          onWillPop: _backButtonPressed,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                  delegate: SliverChildListDelegate(
                List.generate(1, (int index) {
                  return _gardview(index);
                }),
              ))
            ],
          ),
        ));
  }

  Widget _gardview(int index) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/main.png'),
          fit: BoxFit.cover,
        ),
      ), //BoxDecoration
      child: Center(
        child: Column(
          children: <Widget>[
            buildGesture(
              image: Image.asset('images/gr.png'),
              txt: 'Grammar',
            ),
            buildGesture(
              image: Image.asset('images/easy.png'),
              txt: 'Easy',
            ),
            buildGesture(
              image: Image.asset('images/medium.png'),
              txt: 'Medium',
            ),
            buildGesture(
              image: Image.asset('images/hard.png'),
              txt: 'Hard',
            ),
          ],
        ),
      ),
    );
  }
}
