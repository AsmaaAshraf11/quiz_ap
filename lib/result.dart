import 'package:flutter/material.dart';
class Result extends StatelessWidget {
   final Function() r;
   // ignore: prefer_typing_uninitialized_variables
   final resultscor;
     const Result(this.r,this.resultscor,{super.key});
     // ignore: non_constant_identifier_names
     String get Evaluation{
      String resultext;
      if(resultscor>=80){
        resultext="A";
      }
     else if(resultscor>=60){
        resultext="B";
      }
    
      else{
        resultext="D";
      }
      return resultext;

     }

  @override
  Widget build(BuildContext context) {
    return  Center(
                  child: 
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     // ignore: prefer_const_literals_to_create_immutables
                     children:<Widget> [
                        Text(
                          Evaluation,
                        style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        ),
                       TextButton(onPressed: r,
                        child: const Text("Restart",style: TextStyle(fontSize: 30),))
                     ],
                   ),
                  );
  }
}