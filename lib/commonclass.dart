import 'package:flutter/material.dart';

class CommonClass {
  String txt = '';

  Text buildBold({String txt}) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: 18.0, color: Colors.grey[800], fontWeight: FontWeight.bold),
    );
  }

  Text buildFormula({String txt}) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: 20.0, color: Colors.grey[800], fontWeight: FontWeight.bold),
    );
  }

  Text buildText({String txt}) {
    return Text(
      txt,
      style: TextStyle(
          color: Color.fromRGBO(200, 159, 10, 10),
          fontSize: 18.0,
          fontWeight: FontWeight.bold),
    );
  }

  Text buildKey({String txt}) {
    return Text(txt,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.grey[800],
        ));
  }

  Text buildType({String txt}) {
    return Text(
      txt,
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),
    );
  }
}
