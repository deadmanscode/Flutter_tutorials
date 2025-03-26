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
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),color: Colors.deepOrangeAccent,),
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.deepPurpleAccent,),
                padding: EdgeInsets.all(10),
                child: Text("Nested Container-1"),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.amber,),
                padding: EdgeInsets.all(10),
                child: Text("Nested Container-2"),
            ),
              ],
            ),
          ),
         ),
       ),
     );
   }
 }