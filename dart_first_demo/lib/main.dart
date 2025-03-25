import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:(
        Text("First Flutter Program",style: TextStyle(color: Colors.red),)
        )
      )
    );
}
/*
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}*/
