import 'package:flutter/material.dart';
import 'package:ui3/widgets/Home.dart';

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
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
