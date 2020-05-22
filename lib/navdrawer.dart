import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocabs/main2.dart';
import 'package:vocabs/help.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String txt = '';
  String fun2 = '';
  Padding space() {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: SizedBox(
        height: 5.0,
        width: double.infinity,
        child: Divider(
          color: Colors.grey,
          //color: Color.fromRGBO(0, 140, 140, 10),
        ),
      ),
    );
  }

  ListTile buildKey({IconData icon, String txt}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color.fromRGBO(0, 52, 54, 10),
      ),
      title: Text(
        txt,
        style: TextStyle(
            fontFamily: 'Cambria',
            fontSize: 18.0,
            color: Color.fromRGBO(0, 52, 54, 10)),
      ),
      onTap: () {
        if (txt == 'Home') {
          Navigator.of(context).pop();
        } else {
          Navigator.of(context).pop();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Help()));
        }
      },
    ); //ListTile,
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20.0),
            width: double.infinity,
            child: Image.asset('images/navig.png'),
          ), //Container
          buildKey(
            icon: Icons.home,
            txt: 'Home',
          ),

          space(),
          buildKey(
            icon: Icons.help,
            txt: 'Help',
          ),
          space(),
        ],
      ), //Column
    ); //Drawer
  }
}
