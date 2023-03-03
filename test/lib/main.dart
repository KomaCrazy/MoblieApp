import 'package:flutter/material.dart';
import 'package:test/componets/test.dart';

import 'componets/home.dart';

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
    return const MaterialApp(
      // home: Home(),
      home: Test(),
      debugShowCheckedModeBanner: false,
    );
  }
}
