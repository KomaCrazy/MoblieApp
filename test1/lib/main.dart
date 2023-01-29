import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test1/widgets/componets.dart';
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
  @override
  void initState() {
    // TODO: implement initState
    initFirebase();
    super.initState();
  }

  void initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    readFirebase();
  }

  List<Info> list = [];

  void readFirebase() async {
    DatabaseReference starCountRef = FirebaseDatabase.instance.ref('beta');
    starCountRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      Map<String, dynamic> map = json.decode(json.encode(data));
      map.forEach((key, value) {
        list.add(
          Info(
            id: value["id"],
            name: value["name"],
            active: value["active"],
          ),
        );
      });
      List.generate(list.length, (index) => print("${list[index].id}"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: appbar("Test"),
          body: Center(
            child: Column(
                children: List.generate(
                    list.length, (index) => Text("${list[index].name}"))),
          )),
    );
  }
}

class Info {
  int id;
  String name;
  bool active;
  Info({
    required this.id,
    required this.name,
    required this.active,
  });
}
