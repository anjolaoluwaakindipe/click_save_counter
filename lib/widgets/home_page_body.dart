import 'package:flutter/material.dart';
import 'package:step_save_counter/constants/colors.dart';
import 'package:step_save_counter/widgets/home_page_body_content.dart';

class HomePageBody extends StatelessWidget {
  String outCounter;

  HomePageBody({Key key, this.outCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors['backgroundColor'],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[900],
                        spreadRadius: 2,
                        blurRadius: 2,
                      )
                    ]),
                child: HomePageContent(
                  outCounter: outCounter,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
