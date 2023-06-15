import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Answer extends StatelessWidget {
   // ignore: non_constant_identifier_names
   final String Answertext;
   final Function ()x;
    // ignore: prefer_const_constructors_in_immutables
    Answer(this.x,this.Answertext,{super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 5, horizontal: 40,
      ),
          child:  ElevatedButton(
              onPressed:x,
               child: Text(Answertext,style: const TextStyle(fontSize: 27),),
               )
           

    );
  }
}