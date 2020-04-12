import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resutl_score;
Result(this.resutl_score);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("hey"+resutl_score.toString()),
    );
  }
}
