import 'package:flutter/material.dart';
import 'package:ui1/widgets/about.dart';
import 'package:ui1/widgets/func.dart';
import 'package:ui1/widgets/home.dart';
import 'package:ui1/widgets/login.dart';

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
        '/': (context) => Login(),
        '/about': (context) => home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
