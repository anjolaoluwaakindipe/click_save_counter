import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:step_save_counter/constants/colors.dart';
import 'package:step_save_counter/widgets/home_page_body.dart';
import 'package:async/async.dart';
import 'package:step_save_counter/widgets/myfloatingactionbuttons.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();
  int _inCounter = 0;
  String _outCounter = '0';

  Future _incrementCounter() async {
    SharedPreferences prefs = await _sPrefs;

    if (prefs.getInt('count') != null) {
      _inCounter = prefs.getInt('count');
      _inCounter++;
    }

    prefs.setInt('count', _inCounter);
  }

  Future _refreshCounter() async {
    SharedPreferences prefs = await _sPrefs;

    setState(() {
      _inCounter = 0;
    });
    prefs.setInt('count', _inCounter);
  }

  Future _displayCounter() async {
    SharedPreferences prefs = await _sPrefs;
    if (prefs.getInt('count') == null) {
      return _outCounter;
    }
    setState(() {
      _outCounter = prefs.getInt('count').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    _displayCounter();
    return Scaffold(
      body: HomePageBody(
        outCounter: _outCounter,
      ),
      floatingActionButton: MyFloatingActionButtons(
          incrementCounter: _incrementCounter, refreshCounter: _refreshCounter),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.teal[900],
        ),
      ),
    );
  }
}
