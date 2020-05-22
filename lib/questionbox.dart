import 'package:flutter/material.dart';

class QuestionBox extends StatefulWidget {
  final Color _btnColor;
  final String _btnText;
  final String _choiceText;
  final VoidCallback _onPressed;

  QuestionBox(this._btnColor, this._btnText, this._choiceText, this._onPressed);

  @override
  _QuestionBoxState createState() => _QuestionBoxState();
}

class _QuestionBoxState extends State<QuestionBox>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(milliseconds: 100),
        vsync: this,
        lowerBound: 0.0,
        upperBound: 0.4)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    var scale = 1 + _animationController.value;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(39, 73, 109, 0.7),
          border: Border.all(width: 2.0, color: Color.fromRGBO(20, 40, 80, 1)),
          borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        ),
        margin: EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Center(
                child: Text(
                  widget._choiceText,
                  style: TextStyle(
                      fontFamily: 'Handlee',
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            ),
            GestureDetector(
              onTapDown: onTapDown,
              onTapUp: onTapUp,
              onTapCancel: onTapCancel,
              onTap: widget._onPressed,
              child: Transform.scale(
                scale: scale,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 53, 99, 1),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 53, 99, 1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 5.0)
                        ]),
                    child: Center(
                      child: Text(
                        widget._btnText,
                        style: TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                            fontFamily: 'Handlee',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  onTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  onTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  onTapCancel() {
    _animationController.reverse();
  }
}
