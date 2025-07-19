import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatefulWidget {
  const SecondApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return SecondAppState();
  }
}

class SecondAppState extends State<SecondApp> {
  List<String> mylist = ["one", "two", "three", "four", "five"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List view builder")),
        body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, index) {
            return Text(mylist[index]);
          },
        ),
      ),
    );
  }
}
