import 'package:flutter/material.dart';
class Quest extends StatelessWidget {

    // ignore: prefer_typing_uninitialized_variables
    final String questintext;
    const Quest(this.questintext, {super.key});
    
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10.0),
          child: Text(questintext,
              style: const TextStyle(color: Colors.blue,fontSize: 30),
               textAlign: TextAlign.center,
              ),
        );
  }
}