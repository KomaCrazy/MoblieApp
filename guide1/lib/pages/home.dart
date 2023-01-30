import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 40,
              color: Colors.amber,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Text("123"),
            ),
          ),
        ],
      )),
    );
  }
}
