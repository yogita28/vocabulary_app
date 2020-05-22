import 'package:flutter/material.dart';
import 'dart:math';
import 'package:vocabs/question.dart';

class CustomOverlay extends StatefulWidget {
  final bool _isCorrect;
  CustomOverlay(this._isCorrect);

  @override
  _CustomOverlayState createState() => _CustomOverlayState();
}

class _CustomOverlayState extends State<CustomOverlay>
    with SingleTickerProviderStateMixin {
  Animation _iconAnimation;
  AnimationController _iconAnimationController;
  Question _currentQuestion;
  String choice;
  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 0));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.elasticInOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  void dispose() {
    _iconAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget._isCorrect ? Color.fromRGBO(82, 115, 24, 1) : Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 50.0,
            child: new Transform.rotate(
              angle: _iconAnimation.value * 2 * pi,
              child: Icon(
                widget._isCorrect ? Icons.check : Icons.clear,
                color: Colors.white,
                size: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
