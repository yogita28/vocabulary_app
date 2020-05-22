import 'package:flutter/material.dart';
import 'package:vocabs/navdrawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not launch');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 139, 139, 1),
        centerTitle: true,
        title: Text(
          'Help',
          style: TextStyle(
            fontFamily: 'Cambria',
            fontSize: 25.0,
          ),
        ),
      ), //AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/hellp.png',
              height: 180.0,
              width: 180.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Something to say ?',
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
            Text(
              'Email us at- vocabs06@gmail.com',
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: 150.0,
              height: 50.0,
              child: RaisedButton(
                color: Color.fromRGBO(0, 139, 139, 10),
                child: Text(
                  'Email Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  customLaunch('mailto:vocabs06@gmail.com');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
