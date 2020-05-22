import 'package:flutter/material.dart';
import 'package:vocabs/futuretense.dart';
import 'package:vocabs/pasttense.dart';
import 'package:vocabs/presenttense.dart';

class Tenses extends StatefulWidget {
  @override
  _TensesState createState() => _TensesState();
}

class _TensesState extends State<Tenses> {
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
                child: image,
                width: 70.0,
                height: 70.0,
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
        if (txt == 'Present Tense') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Presentt()));
        } else if (txt == 'Past Tense') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pastt()));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Futuret()));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 139, 139, 1),
        centerTitle: true,
        title: Text(
          'Tenses',
          style: TextStyle(
            fontFamily: 'Cambria',
            fontSize: 25.0,
          ),
        ),
      ), //AppBar
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            buildGesture(
                image: Image.asset('images/present.png'), txt: 'Present Tense'),
            buildGesture(
                image: Image.asset('images/past.png'), txt: 'Past Tense'),
            buildGesture(
                image: Image.asset('images/future.png'), txt: 'Future Tense'),
          ],
        ),
      ), //padding
    );
  }
}
