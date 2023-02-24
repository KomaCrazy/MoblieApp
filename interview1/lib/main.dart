import 'package:flutter/material.dart';
import 'package:interview1/widgets/Home.dart';
import 'package:interview1/widgets/System.dart';

void main() async {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    // TODO: implement initState
    initFirebase();
    super.initState();
  }

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
