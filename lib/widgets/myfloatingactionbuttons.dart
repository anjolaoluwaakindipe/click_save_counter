import 'package:flutter/material.dart';

class MyFloatingActionButtons extends StatelessWidget {
  final Function refreshCounter;
  final Function incrementCounter;

  const MyFloatingActionButtons(
      {Key key, this.refreshCounter, this.incrementCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: refreshCounter,
            tooltip: 'Clear',
            child: Icon(Icons.refresh),
            isExtended: true,
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
            isExtended: true,
          ),
        ],
      ),
    );
  }
}
