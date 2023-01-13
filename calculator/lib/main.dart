import 'package:calculator/widgets/Widgets.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Logo(),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter คดยาก",
              style: TextStyle(fontSize: 18),
            ),
          ],
        )),
        floatingActionButton: const bnt_next(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        canvasColor: Colors.amber[200],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
