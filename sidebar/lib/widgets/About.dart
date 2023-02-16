import 'package:flutter/material.dart';

int _i = 0;

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  void initState() {
    // TODO: implement initState
    _i = _i + 1;
    print("About $_i");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: (() => Navigator.pushNamed(context, "/")),
              child: Text("Go To Home"))
        ],
      )),
    );
  }
}
