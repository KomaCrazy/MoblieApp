import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

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
  void initState() {
    // TODO: implement initState
    initFirebase();
    super.initState();
  }

  void initFirebase() async {
    print("initFirebase");
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo"),
        ),
        body: ListView.builder(
          itemCount: 20,
          padding: EdgeInsets.only(top: 10),
          itemBuilder: (BuildContext context, int index) {
            return 
          },
        ),
      ),
    );
  }
}
