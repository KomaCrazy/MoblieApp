import 'package:flutter/material.dart';

int _i = 0;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    _i = _i + 1;
    print("Home $_i");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        ElevatedButton(
            onPressed: (() => Navigator.pushNamed(context, "/about")),
            child: Text("Go To About"))
      ]),
    ));
  }
}
