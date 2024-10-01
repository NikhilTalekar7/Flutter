import "package:flutter/material.dart";

void main(){
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget{
  const ToggleColor({super.key});

  @override
  State createState () => _ToggleColorState();
}
class _ToggleColorState extends State<ToggleColor>{
  bool changeColor = true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Color"),
          centerTitle: true,
          backgroundColor:Colors.blue,
      ),
      body : Center(
        child:Container(
          height: 150,
          width: 150,
          color : Colors.red,
       ) ),
       ),
      );
  }
}