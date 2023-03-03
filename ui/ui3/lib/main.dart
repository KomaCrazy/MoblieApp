import 'package:flutter/material.dart';
import 'package:ui3/home.dart';

void main() {
  runApp(const MyMain());
}

class MyMain extends StatefulWidget {
  const MyMain({super.key});

  @override
  State<MyMain> createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
