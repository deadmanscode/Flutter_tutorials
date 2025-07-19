import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String displaytext = "text";
  List<String> tasklist = ["task 1", "task 2"];
  TextEditingController txtcntlr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Todo list"), backgroundColor: Colors.blue),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: txtcntlr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Enter Input"),
                      ),
                    ),
                  ),
                ),

                MaterialButton(
                  color: Colors.white,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {
                    setState(() {
                      displaytext = txtcntlr.text;
                      tasklist.add(txtcntlr.text);
                      txtcntlr.clear();
                    });
                  },
                  child: Text("ADD"),
                ),
              ],
            ),

            Flexible(
              child: ListView.builder(
                itemCount: tasklist.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(tasklist[index]),
                        ),
                      ),
                      MaterialButton(
                        child: Icon(Icons.delete, color: Colors.deepOrange),
                        onPressed: () {
                          setState(() {
                            tasklist.removeAt(index);
                          });
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
