import 'package:flutter/material.dart';

int uiRow = 1;

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

const Key centerKey = ValueKey<String>('bottom-sliver-list');

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test"),
          actions: [
            MaterialButton(
              onPressed: () {
                uiRow += 1;
                setState(() {});
              },
              child: Icon(Icons.add),
            )
          ],
        ),
        body: ListView(
          children: List.generate(
              30,
              (index) => Column(
                    children: [
                      Container(
                        height: 40,
                        child: Text("$index"),
                      ),
                    ],
                  )),
        ));
  }
}
