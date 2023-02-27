import 'package:flutter/material.dart';
import 'package:multigrade/componets/home.dart';
import 'package:multigrade/componets/start.dart';
import 'package:multigrade/style.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      // home: const start(),
      // theme: themStyle(),
      debugShowCheckedModeBanner: false,
    );
  }
}
