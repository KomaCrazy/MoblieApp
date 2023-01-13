import 'package:app1/widgets/Components.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String bar = "App Bar";
  int count = 0;

  void add() => setState(
        () {
          count++;
        },
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: Bar(bar),
        body: Main(count),
        floatingActionButton: FloatingActionButton(
          onPressed: () => add(),
          child: const Icon(Icons.add),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
