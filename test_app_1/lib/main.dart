import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qindex = 0;
  void _answer1() {
    setState(() {
    _qindex = _qindex + 1;
    });
    print(_qindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favourite colour?',
      'what is your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello world'),
        ),
        body: Column(
          children: [
            Question(
              questions[_qindex],
            ),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: _answer1,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: _answer1,
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: _answer1,
            )
          ],
        ),
      ),
    );
  }
}
