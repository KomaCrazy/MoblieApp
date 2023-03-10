import 'package:animation/componets/dashboard.dart';
import 'package:animation/componets/home.dart';
import 'package:flutter/material.dart';

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
      // home: Home(),
      home: DashBoard(),

      theme: ThemeData(
          // brightness: Brightness.dark,
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
