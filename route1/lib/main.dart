import 'package:flutter/material.dart';
import 'package:route1/widgets/about.dart';
import 'package:route1/widgets/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => home(),
        '/about': (_) => about(),
      },
    );
  }
}
