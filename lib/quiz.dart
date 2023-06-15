import 'package:flutter/material.dart';
import 'answer.dart';
import 'quest.dart';
// ignore: unused_import
import 'main.dart';
class Quiz extends StatelessWidget {
  final  List<Map<String, Object>> question;
  final int quistionindex;
  final Function(int s) answerquestion;
  const Quiz(this.question,this.quistionindex,this.answerquestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: <Widget>[
            Quest(question[quistionindex]['questiontext'].toString()),
        ...(question[quistionindex]['answer']as List<Map<String, Object>>).map((answer) {
      return Answer(()=>answerquestion(int.parse(answer['score'].toString())), answer['text'].toString());
    }).toList(),

    ],
    );
  }
}