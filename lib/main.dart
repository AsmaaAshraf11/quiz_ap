// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
import 'quest.dart';
import 'answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color b=Colors.black;
    Color w=Colors.white;

  bool isSwitched=false;
  int totalscor=0;
  int quistionindex = 0;
  void restart() {
    setState(() {
      quistionindex= 0;
       totalscor=0;

    });
  }
 void answerquestion( int score) {
    totalscor +=score;
    setState(() {
      quistionindex += 1;
    });
         // ignore: avoid_print
         print(totalscor);

    // ignore: avoid_print
    print(quistionindex);

    // ignore: avoid_print
    print("answer chosen");
  }

  List<Map<String, Object>> question = [
    {
      'questiontext': '1- Which of the following is used for comments in C++?',
      'answer': [{'text':'(a)/* comment */', 'score':0}, 
      {'text':'(b)// comment */','score':0}, 
     {'text': ' (c)// comment', 'score':0}, 
      {'text':' (d)both // comment or /* comment */','score':20},
      ],

    },
    {
      'questiontext': '2- Who invented C++?',
      'answer': [
        {'text':'(a) Dennis Ritchie','score':0}, 
         {'text':'(b) Ken Thompson', 'score':0}, 
        {'text': '(c) Brian Kernighan', 'score':0}, 
         {'text':'(d) Bjarne Stroustrup','score':20}, 
         ],

    },
    

    {
      'questiontext': '3- Which of the following is not a type of Constructor in C++??',
      'answer': [
        {'text':'(a)Default constructor','score':0}, 
         {'text':'(b)  Parameterized constructor', 'score':0}, 
        {'text': '(c) Copy constructor', 'score':0}, 
         {'text':'(d) Friend constructor','score':20}, 
         ],

    },
    
    {
      'questiontext': '4- Which of the following correctly declares an array in C++?',
      'answer': [
        {'text':'(a)array{10};','score':0}, 
         {'text':'(b)  array array[10];', 'score':0}, 
        {'text': '(c)  array array[10];', 'score':0}, 
         {'text':'(d) int array[10];','score':20}, 
         ],

    },
    {
      'questiontext': '5- What is the size of wchar_t in C++?',
      'answer': [
        {'text':'(a)2 or 4;','score':0}, 
         {'text':'(b)Based on the number of bits in the system', 'score':20}, 
        {'text': '(c) 2', 'score':0}, 
         {'text':'(d) 4','score':0}, 
         ],

    },

  ];

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("quiz App"),
              actions: <Widget>[
                Switch(
                  value: isSwitched, 
                onChanged: (value){
                  setState(() {
                      isSwitched=value;
                      // ignore: avoid_print
                      print(isSwitched);
                      if(isSwitched==true){ b=Colors.white;w=Colors.black;}
                      if(isSwitched==false){ b=Colors.black;w=Colors.white;}


    });
                },
                ),
              ],
            ),
            // ignore: avoid_unnecessary_containers
            body: Container(
              color: w,
                child: quistionindex < question.length? 
                Quiz(question, quistionindex,answerquestion )
                :Result(restart,totalscor)
    )
    ,
    )
    );
  }
}
