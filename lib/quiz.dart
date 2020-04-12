import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> AuiList;
  final Function Question;
  final int Quindex;
  Quiz(
      {@required this.Question,
      @required this.AuiList,
      @required this.Quindex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Text("Questions are"),
      //Text(questions("Your Question is" + selection.elementAt(abc))
      Questions("Your Question is " + AuiList[Quindex]["Questions"]),
      //Text("Your Question is" + selection.elementAt(abc)),
      ...(AuiList[Quindex]["answer"] as List<Map<String,Object>>).map((answer) {
        return Answer(()=>Question(answer["score"]), answer["text"]);
      }).toList(),
    ]);
  }
}
