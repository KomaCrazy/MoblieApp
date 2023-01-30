import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';

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
    readFirebase();
  }

  void readFirebase() {
    DatabaseReference starCountRef = FirebaseDatabase.instance.ref('beta');
    starCountRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print("$data");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: List.generate(3, (index) => Text("123")),
        ),
      ),
    );
  }
}
