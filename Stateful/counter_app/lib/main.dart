import "package:flutter/material.dart";

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});
  @override
  State createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(child: Text("$cnt")),
        floatingActionButton: FloatingActionButton(onPressed: () {
          cnt++;
          setState(() {});
         },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
