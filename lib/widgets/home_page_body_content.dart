import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  final outCounter;

  const HomePageContent({Key key, this.outCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'You have pushed the button this many times:',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
        Text(
          '$outCounter',
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
