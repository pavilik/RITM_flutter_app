import 'package:flutter/material.dart';

class TextOpacitySimple extends StatefulWidget {
  @override
  TextOpacitySimpleState createState() {
    return new TextOpacitySimpleState();
  }
}

class TextOpacitySimpleState extends State<TextOpacitySimple> {
  @override
  void initState() {
    super.initState();
  }

  var _opacity = 0.0;
  var _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _opacity = _opacity == 0.0 ? 1.0 : 0.0;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        width: _width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.blueGrey,
        ),
        child: AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: _opacity,
          child: Text(
            '#Hashtag',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}