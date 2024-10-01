import "package:flutter/material.dart";

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  int _counter=0;
  List<String> playerList = <String>[
    "https://static.toiimg.com/thumb/resizemode-4,width-1280,height-720,msid-111741230/111741230.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Virat_Kohli_in_PMO_New_Delhi.jpg/330px-Virat_Kohli_in_PMO_New_Delhi.jpg",
    "https://thecricketlounge.com/wp-content/uploads/2024/09/hardik-pandya.webp",
    "https://upload.wikimedia.org/wikipedia/commons/b/b7/Suryakumar_Yadav_in_PMO_New_Delhi.jpg",
    "https://static.toiimg.com/thumb/resizemode-4,width-1280,height-720,msid-111741230/111741230.jpg", 
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text("Player App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(playerList[_counter], height: 300),
          ],
        )),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            if (_counter < playerList.length - 1) {
              _counter++;
            }else{
              _counter = 0;
            }
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        ),
        ));
  }
}
