import 'package:flutter/material.dart';

void main() {
runApp(const MainApp());
 }
 
 class MainApp extends StatelessWidget {
   const MainApp({super.key});
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
        appBar: AppBar(
          title: Text("TalkTrackRide"),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
         body: Center(
          child:Container(
            color: Colors.deepOrange,
            height: 200,
            width: 400,
            alignment: Alignment.center,
            child: Text('App body goes here!!!'),

          ),
         ),
       ),
     );
   }
 }