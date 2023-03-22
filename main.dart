

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  String titleText = "Hello World Title";
  int score = 36;
  @override
  Widget build(BuildContext context) {
    var students = ["Mehmet Eren", "Osman Güleç", "Mustafa Aydoğmuş"];
    return Scaffold(
      appBar: AppBar(
        title: Text(titleText),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index){
                  return Text(students[index]);
                }
            ),
          ),

          Center(
            child: ElevatedButton(
              onPressed: (){
                String message = "";
                if(score >= 50){
                  message = "Very Good";
                }else if(score>=35){
                  message = "Good";
                }else{
                  message = "Bad";
                }

                var alert = AlertDialog(
                  title: Text("Alert Dialog is started"),
                  content: Text(message),
                );
                showDialog(context: context, builder: (BuildContext context)=>alert);
              },
              child: Text("Press"),
            ),
          ),
        ],
      ),
    );
  }
  
}