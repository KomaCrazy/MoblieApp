import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
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
  List<SetData> list = [];

  @override
  void initState() {
    // TODO: implement initState
    initFirebase();
    super.initState();
  }

  void initFirebase() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    print("initFirebase");
    firebaseRead();
  }

  void firebaseRead() async {
    DatabaseReference starCountRef = FirebaseDatabase.instance.ref('beta');
    starCountRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      Map<String, dynamic> map = json.decode(json.encode(data));
      list = [];
      map.forEach((key, value) {
        list.add(
          SetData(
              id: value["id"], name: value["name"], active: value["active"]),
        );
      });
      print("${list.length}");
      list.forEach((el) {
        print("${el.name}");
      });
      // setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: List.generate(
              list.length, (index) => Text("${list[index].name}")),
        ),
      ),
    );
  }
}

class SetData {
  int id;
  String name;
  bool active;
  SetData({required this.id, required this.name, required this.active});
}
