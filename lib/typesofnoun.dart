import 'package:flutter/material.dart';
import 'package:vocabs/commonclass.dart';

CommonClass commonClass = CommonClass();

class TypesofNoun extends StatefulWidget {
  @override
  _TypesofNounState createState() => _TypesofNounState();
}

class _TypesofNounState extends State<TypesofNoun> {
  var ttVisibility = false;
  var tcVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 139, 139, 1),
          centerTitle: true,
          title: Text(
            'Types of Noun',
            style: TextStyle(
              fontFamily: 'Cambria',
              fontSize: 25.0,
            ),
          ),
        ),
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
      padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0, bottom: 25),
      child: Column(children: <Widget>[
        Center(
          child: Image.asset(
            'images/noun.png',
            width: 70,
            height: 70,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        commonClass.buildType(txt: 'Common Noun'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'A common noun is the general name given to people, places, animals, or things that are of the same type.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(
            txt: '1.Laptops, PCs, IPads and mobiles are electronic items. '),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.Mumbai, Delhi, Kolkata and Chennai are metro cities.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(
            txt: 'Here, the words electronic items, cities are common nouns.'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildBold(
            txt: 'Identify the common nouns in the sentences given below -'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt: '1.Taj mahal, QutubMinar and Red Fort are monuments.  '),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt:
                '2.Group of negative and positve numbers are known as integers.'),
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
              ttVisibility = true;
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
            visible: ttVisibility,
            child: commonClass.buildText(txt: 'monuments')),
        SizedBox(
          height: 7,
        ),
        Visibility(
            visible: ttVisibility,
            child: commonClass.buildText(txt: 'integers')),
        SizedBox(
          height: 35,
        ),
        commonClass.buildType(txt: 'Proper Noun'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt:
                'A proper noun is the specific name given to a person, place, animal or thing.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildKey(txt: '1.Bill is the specific name of a person'),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.Google is the specific name of a company.'),
        SizedBox(
          height: 30,
        ),
        commonClass.buildText(
            txt: 'Here, the names Bill, Google are proper nouns.'),
        SizedBox(
          height: 35,
        ),
        commonClass.buildBold(
            txt: 'Identify the proper nouns in the sentences given below -'),
        SizedBox(
          height: 20,
        ),
        commonClass.buildKey(
            txt: '1.The Empire State Building is located in New York. '),
        SizedBox(
          height: 7,
        ),
        commonClass.buildKey(
            txt: '2.Pablo Picasso is one of the very famous artist.'),
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
            visible: tcVisibility,
            child:
                commonClass.buildText(txt: 'Empire State Building, New York')),
        SizedBox(
          height: 7,
        ),
        Visibility(
            visible: tcVisibility,
            child: commonClass.buildText(txt: 'Pablo Picasso')),
      ]),
    );
  }
}
