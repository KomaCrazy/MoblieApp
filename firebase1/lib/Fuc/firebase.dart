import 'dart:convert';
import 'dart:math';

import 'package:firebase1/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firebase_options.dart';

void initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  firebaseRead();
}

class ListSet {
  String id;
  String user;
  int age;
  ListSet({required this.id, required this.user, required this.age});
}

List<ListSet> list = [];

void firebaseRead() async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("data");

  ref.onValue.listen((DatabaseEvent event) {
    final data = event.snapshot.value;
    Map<String, dynamic> map = json.decode(json.encode(data));
    list = [];
    map.forEach((key, val) {
      list.add(ListSet(id: key.toString(), user: val["user"], age: val["age"]));
    });
  });
}

void firebaseWrite(user, age, context) async {
  const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String genId(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  DatabaseReference ref = FirebaseDatabase.instance.ref("data/${genId(10)}");
  await ref.set({
    "user": user,
    "age": int.parse(age),
  });
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageHome()));
}
