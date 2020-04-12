import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';

import './quiz.dart';
import './result.dart';

// void main()
// {
// runApp(myApp1());
// }

void main() => runApp(MyApp1());

class MyApp1 extends StatefulWidget {
  @override
  _MyApp1State createState() => (_MyApp1State());
}

class _MyApp1State extends State<MyApp1> {
  int _abc = 0;
  int var_total=0;
  Future<void> _QuesAnswer(int _as) async {
    setState(() {
      //if (abc < 2) {
      _abc++;
      var_total=_as+var_total;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    var _selection = [
      {
        "Questions": "what is your fav color",
        "answer": [
          {"text": "Black", "score": 10},
          {"text": "red", "score": 5},
          {"text": "blue", "score": 0}
        ]
      },
      {
        "Questions": "what is you fav. place",
        "answer": [
          {"text": "khi", "score": 10},
          {"text": "isl", "score": 5},
          {"text": "hyd", "score": 0}
        ]
      },
      {
        "Questions": "what is your favorite game",
        "answer": [
          {"text": "Ludo", "score": 10},
          {"text": "Counterstrike", "score": 5},
          {"text": "NFS", "score": 0}
        ]
      },
    ];
    /*var selection = [
      "what is your fav color",
      "what is you fav. place",
      "what is your favorite game"
    ];
    */
    //return MaterialApp(home: Text("Checking"),); // checking
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nabs APP"),
        ),
        // body: Text("Textbox"),
        body: _abc < _selection.length
            ? Quiz(AuiList: _selection, Quindex: _abc, Question: _QuesAnswer)
            : Result(var_total),
      ),
    );
  }
}
// Answer(_QuesAnswer),
// Answer(_QuesAnswer),
/*
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: _QuesAnswer,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: null,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: () {
              abc=-1;
            },
          )
       */
// backgroundColor: color.,
