import 'package:flutter/material.dart';
import 'package:test/componets/system.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: Center(
          child: Column(
        children: [
          Container(
              width: 200,
              child: TextField(
                  controller: set,
                  decoration: InputDecoration(label: Text("Set")))),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(set.text);
                  SetData();
                },
                child: Text("Set"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  ShowData();

                },
                child: Text("Show"),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
