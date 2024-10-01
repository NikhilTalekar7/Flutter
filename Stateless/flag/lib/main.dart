import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text(" Indian Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Center(child:Row(
        children:[
          Padding(padding: EdgeInsets.fromLTRB(100,50,0,0)),
           Container(
            height: 450,
            width: 8,
            color: Colors.black
          ),
        Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(20,180,0,0)),
          Container(
            height: 35,
            width: 200,
            color: Colors.orange
          ),
          Container(
            height: 35,
            width: 200,
            color: Colors.white,
            child: Image.network("https://i.pinimg.com/736x/46/0f/8d/460f8de4addfb06ad93dd276d7d102f8.jpg"),
          ),
          Container(
            height: 35,
            width: 200,
            color: Colors.green
          ),
          Padding(padding: EdgeInsets.fromLTRB(0,295,20,0)),
          Container(
            height: 35,
            width: 200,
            color: Colors.black
          ),
        ],

      ),
      ]),
   
     )
     )
    );
  }
}
